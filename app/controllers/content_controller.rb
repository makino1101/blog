class ContentController < ApplicationController

  def index
    @content=Content.all
  end

  def new
  end

  def show
  end

  def create
    Content.create(blog_params)
  end

  def destroy

  end

  private
  def blog_params
    params.permit(:content)
  end

end
