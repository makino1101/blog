class ContentController < ApplicationController

  def index
    @content=Content.all.order("created_at DESC").page(params[:page]).per(5)
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
