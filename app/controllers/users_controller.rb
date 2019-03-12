class UsersController < ApplicationController

  def show
    @mail = current_user.email
    @content = current_user.content.page(params[:page]).per(5).order("created_at DESC")
  end
end
