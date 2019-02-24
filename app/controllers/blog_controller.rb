class BlogController < ApplicationController

  def index
    @blogs= Blogcontent.all
  end
end
