require 'spec_helper'

describe CategoriesController, :type => :controller do
  include_context 'CategoriesController#index shared spec'
  include_context 'CategoriesController#create shared spec'
  include_context 'CategoriesController#update shared spec'
  include_context 'CategoriesController#destroy shared spec'
  include_context 'CategoriesController#places shared spec'
end
