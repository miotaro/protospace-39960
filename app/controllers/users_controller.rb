class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :destroy]

  def show
    @user = User.find(params[:id])
    @prototypes = @user.prototypes.includes(:user)
  end
end