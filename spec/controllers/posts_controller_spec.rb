require 'rails_helper'

RSpec.describe PostsController do
  before do
    (0..10).each do |p|
      Post.create(
        title: "Post #{p}",
        description: "Description for post #{p}",
        keywords: "some, key, words",
      )
    end
  end
  describe '#index' do
    it 'shows a list of all posts' do
      get :index
      expect(response).to have_http_status(:success)

      #check that @posts is set in the controller
    end
  end

  describe '#show' do
    # get a post by id or something
  end

  describe '#new' do
    # loads the new post view
  end

  describe '#edit' do
    # load the post edit view
  end

  describe '#create' do
    # creates a new post
  end

  describe '#update' do
    # change values of a post
  end

  describe '#destroy' do
    # delete a post
  end
end
