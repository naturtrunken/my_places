require 'spec_helper'

shared_context 'CategoriesController#destroy shared spec' do

  describe 'DELETE #destroy' do
    before do
      @category = FactoryGirl.create(
          :category,
          :name => 'q' * Rails.configuration.global[:category][:model][:name][:maximum_length]
      )
    end

    before do
      delete :destroy,
             id: @category.id,
             :format => 'json'
    end

    it 'should return JSON status 200' do
      response.status.should == 200
    end

    it 'should have deleted the new category' do
      Category.where(
          :name => 'q' * Rails.configuration.global[:category][:model][:name][:maximum_length]
      ).count.should == 0
    end

  end # put end

end
