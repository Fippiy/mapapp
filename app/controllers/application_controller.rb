class ApplicationController < ActionController::Base
  before_action :new_user
  def new_user
    unless user_signed_in?
      @user = User.new
    end
  end
end
