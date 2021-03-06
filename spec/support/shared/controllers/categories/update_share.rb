require 'spec_helper'

shared_context 'CategoriesController#update shared spec' do |state|

  describe 'PUT #update' do
    before do
      @category = FactoryGirl.create(
          :category,
          name: 'a' * Rails.configuration.global[:category][:model][:name][:maximum_length]
      )
    end

    describe 'with valid data' do
      before do
        put :update,
            id: @category.id,
            category: FactoryGirl.attributes_for(
                :category,
                name: 'z' * Rails.configuration.global[:category][:model][:name][:maximum_length]
            ),
            :format => 'json'
      end

      it 'should return JSON status 200' do
        response.status.should == 200
      end

      it 'should has updated the category' do
        @category.reload.name.should eq ('z' * Rails.configuration.global[:category][:model][:name][:maximum_length])
      end

    end # valid data

    describe 'with invalid data' do
      before do
        put :update,
            id: @category.id,
            category: FactoryGirl.attributes_for(
                :category,
                name: nil
            ),
            :format => 'json'
      end

      it 'should return JSON status 400' do
        response.status.should == 400
      end

      it 'should not has updated the category' do
        @category.reload.name.should eq ('a' * Rails.configuration.global[:category][:model][:name][:maximum_length])
      end

    end # invalid data


  end # #update

end
