require 'spec_helper'

describe CategoriesController, :type => :routing do
  describe 'routing' do

    let(:category) { FactoryGirl.create(:category) }

    it 'route to #index' do
      expect(:get => '/categories.json').to route_to(
                                                :controller => 'categories',
                                                :action => 'index',
                                                :format => 'json'
                                            )
    end

    it 'route to #create' do
      expect(:post => '/categories.json').to route_to(
                                                 :controller => 'categories',
                                                 :action => 'create',
                                                 :format => 'json'
                                             )
    end

    it 'route to #update' do
      expect(:put => 'categories/' + category.id.to_s + '.json').to route_to(
                                                                        :controller => 'categories',
                                                                        :action => 'update',
                                                                        :id => category.id.to_s,
                                                                        :format => 'json'
                                                                    )
    end

    it 'route to #destroy' do
      expect(:delete => '/categories/' + category.id.to_s + '.json').to route_to(
                                                                            :controller => 'categories',
                                                                            :action => 'destroy',
                                                                            :id => category.id.to_s,
                                                                            :format => 'json'
                                                                        )
    end

  end

end