class WelcomeController < ApplicationController
  def index
    @post = Post.all
  end
end
