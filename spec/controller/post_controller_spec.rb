require 'spec_helper'

describe PostsController do
  describe 'create' do
    before do
      expect(Post.all.count).to eq 0
    end

    it 'creates post' do
      post :create, { post: { title: 'First post', body: 'hello world' } }

      expect(Post.all.count).to eq 1
      post = Post.first
      expect(post.title).to eq 'First post'
      expect(post.body).to eq 'hello world'
    end
  end
end