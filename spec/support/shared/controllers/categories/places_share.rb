require 'spec_helper'

shared_context 'CategoriesController#places shared spec' do |state|

  describe 'GET #places' do
    before do

      # Create a category.
      @category = FactoryGirl.create(:category)

      # Put some places into this category.
      1.upto(3) do |i|
        FactoryGirl.create(
            :place,
            category_id: @category.id
        )
      end

      get :places,
          id: @category.id,
          format: 'json'
    end

    it 'should return JSON status 200' do
      response.status.should == 200
    end

    it 'should return three places' do
      json_response = JSON.parse(response.body)
      json_response.count.should == 3
    end

  end # #places

end
