require 'spec_helper'

shared_context 'CategoriesController#create shared spec' do |state|

  describe 'POST #create' do
    describe 'with valid data' do
      before do
        post :create,
             category: FactoryGirl.attributes_for(
                 :category,
                 name: 'q' * Rails.configuration.global[:category][:model][:name][:maximum_length]
             ),
             :format => 'json'
      end

      it 'should return JSON status 201' do
        response.status.should == 201
      end

      it 'should have created the new category' do
        Category.where(
            :name => 'q' * Rails.configuration.global[:category][:model][:name][:maximum_length]
        ).count.should == 1
      end

    end

    describe 'with invalid data' do
      before do
        post :create,
             category: FactoryGirl.attributes_for(
                 :category,
                 name: nil
             ),
             :format => 'json'
      end

      it 'should return JSON status 500' do
        response.status.should == 500
      end

    end

  end # #create

end
