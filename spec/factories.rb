FactoryGirl.define do

  factory :category do
    sequence(:name) { |n| 'Marker ' + n.to_s }
  end

  factory :place do
    sequence(:name) { |n| 'Place ' + n.to_s }
    category_id FactoryGirl.create(:category).id
  end

end
