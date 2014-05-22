require 'spec_helper'

describe CategoriesController do
  describe 'routing' do

    let(:category) { FactoryGirl.create(:category) }

    it 'route to #index' do
      { :get => '/categories.json' }.should route_to(
                                                :controller => 'categories',
                                                :action => 'index',
                                                :format => 'json'
                                            )
    end

    it 'route to #create' do
      { :post => '/categories.json' }.should route_to(
                                                 :controller => 'categories',
                                                 :action => 'create',
                                                 :format => 'json'
                                             )
    end

    it 'route to #update' do
      { :put => 'categories/' + category.id.to_s + '.json' }.should route_to(
                                                                        :controller => 'categories',
                                                                        :action => 'update',
                                                                        :id => category.id.to_s,
                                                                        :format => 'json'
                                                                    )
    end

    it 'route to #destroy' do
      { :delete => '/categories/' + category.id.to_s + '.json' }.should route_to(
                                                                            :controller => 'categories',
                                                                            :action => 'destroy',
                                                                            :id => category.id.to_s,
                                                                            :format => 'json'
                                                                        )
    end

  end

end