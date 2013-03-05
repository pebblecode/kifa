class LecturesController < ApplicationController
  respond_to :html, :json
  before_filter :find_lecture, :only => [:show, :edit, :update, :destroy]
  before_filter :require_user

  def index
    @lectures = Lecture.all
    respond_with @lectures
  end

  def show
    @users = User.all
    respond_with @lecture
  end

  def new
    @lecture = Lecture.new
  end

  def create
    @lecture = Lecture.new(params[:lecture])
    @lecture.lecturer = current_user
    if @lecture.save
      flash[:notice] = 'Saved successfully'
    end
    respond_with @lecture
  end

  def edit
    @resources = @lecture.resources.build
  end

  def update
    @lecture.update_attributes(params[:lecture])
    respond_with @lecture
  end

  def destroy
    @lecture.destroy
    respond_with @lecture
  end

  private
    def find_lecture
      @lecture = Lecture.find(params[:id])
    end

    def require_user
      unless current_user
        redirect_to login_url
        return false
      end
    end


end
