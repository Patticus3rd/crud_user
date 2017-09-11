class UsersController < ApplicationController
  before_action :set_user, only: [:create, :update, :destroy]


  def index
    render json: @user.first_name
  end

  def create
    @user = User.new
  end

  def update
      if @user.update(user_params)
        render json: @user
      else
        render_error(@user)
      end
  end

  def destroy
  end



end
