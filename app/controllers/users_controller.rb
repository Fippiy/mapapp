class UsersController < ApplicationController
  def search
    @user = User.where('username LIKE(?)', "#{params[:keyword]}").length
    render json: @user
  end
end
