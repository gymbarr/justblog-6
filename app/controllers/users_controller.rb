class UsersController < ApplicationController
  # method initiate a new user
  def new
    @user = User.new
  end

  def create
    byebug
  end
end