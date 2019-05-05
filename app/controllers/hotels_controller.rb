class HotelsController < ApplicationController

  def index
    @blogs = Blog.all
  end

end
