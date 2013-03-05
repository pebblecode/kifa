class LecturesController < ApplicationController
  respond_to :json
  before_filter :find_lecture, :only => [:show, :edit, :update, :destroy]

  def index
    @lectures = Lecture.all
    respond_with @lectures
  end

  def show
    respond_with @lecture
  end

  def create
    @lecture = Lecture.new(params[:lecture])
    respond_with @lecture
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

end
