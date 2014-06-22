class Category < ActiveRecord::Base
  belongs_to :place

  # ---------------------------------------------------------------------------------------
  validates :name,
            presence: true
  validates_length_of :name, {
      allow_nil: false,
      :maximum => Rails.configuration.global[:category][:model][:name][:maximum_length]
  }

end
