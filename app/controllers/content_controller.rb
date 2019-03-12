class ContentController < ApplicationController

  before_action :move_to_index, except: [:index, :show]

  def index
    @content=Content.includes(:user).page(params[:page]).per(5).order("created_at DESC")
  end

  def new
  end

  def show
    @content = Content.find(params[:id])
  end

  def create
    Content.create(content: blog_params[:content],user_id: current_user.id)
  end

  def destroy
    content = Content.find(params[:id])
    if content.user_id == current_user.id
      content.destroy
      redirect_to action: :index
    end
  end

  def edit
    @content = Content.find(params[:id])
  end

  def update
    content = Content.find(params[:id])
    if content.user_id == current_user.id
      content.update(blog_params)
      redirect_to action: :index
    end
  end

  private
  def blog_params
    params.permit(:content)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
