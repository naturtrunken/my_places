require 'spec_helper'

shared_context 'CategoriesController#index shared spec' do |state|

  describe 'GET #index' do
    before do

      Category.delete_all

      # Put some places into this category.
      1.upto(3) { FactoryGirl.create(:category) }

      get :index,
          format: 'json'
    end

    it 'should return JSON status 200' do
      response.status.should == 200
    end

    it 'should return three categories' do
      json_response = JSON.parse(response.body)
      json_response.count.should == 3
    end

  end # #index

end
