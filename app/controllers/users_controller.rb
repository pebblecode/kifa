class UsersController < ApplicationController
  respond_to :json
  before_filter :find_user, :only => [:show, :edit, :update, :destroy]

  def index
    @users = User.all
    respond_with @users
  end

  def show
    respond_with @user
  end

  def create
    @user = User.new(params[:user])
    @user.save
    respond_with @user
  end

  def update
    @user.update_attributes(params[:user])
    respond_with @user
  end

  def destroy
    @user.destroy
    respond_with @user
  end

  private
    def find_user
      @user = User.find(params[:id])
    end

end
