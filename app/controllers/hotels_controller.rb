class HotelsController < ApplicationController

  def index
    @blogs = Blog.all
    @cities = City.all
  end

end
