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
        expect(response.status).to eql(201)
      end

      it 'should have created the new category' do
        expect(Category.where(
                   :name => 'q' * Rails.configuration.global[:category][:model][:name][:maximum_length]
               ).count).to eql(1)
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
        expect(response.status).to eql(500)
      end

    end

  end # #create

end
