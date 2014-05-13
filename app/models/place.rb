class Place < ActiveRecord::Base
  has_one :category

  before_save :update_address

  # ---------------------------------------------------------------------------------------
  validates :name,
            presence: true

  validates :category_id,
            presence: true


  # Tries to update the address if the coordinates has changed.
  # ---------------------------------------------------------------------------------------
  def update_address

    # Return immediately if we do not have anything to do.
    return unless self.latitude_changed? or self.longitude_changed?

    # Ask the Openstreetmap API for the address.
    osm_response = HTTParty.get(
        'http://nominatim.openstreetmap.org/reverse?format=json&lat=' +
            self.latitude.to_s +
            '&lon=' +
            self.longitude.to_s +
            '&addressdetails=1'
    )

    # Abort if the return code isn't OK.
    return unless osm_response.code == 200

    # Parse the response.
    osm_parsed = JSON.parse(osm_response.body)

    # Abort if we do not have an address key in the response.
    return unless osm_parsed['address']

    # Concat the address string.
    # TODO Maybe we (=> you! Yes, you, who are reading this :-) ) should abstract
    # this for various address formats. I don't like the output of display_name,
    # it should be better formatted.
    #    self.address = osm_parsed['address']['road'] + ' ' +
    #        osm_parsed['address']['house_number'] + ', ' +
    #        osm_parsed['address']['state']

    self.address = osm_parsed['display_name']
  end

end
