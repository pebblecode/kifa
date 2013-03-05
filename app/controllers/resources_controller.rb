class ResourcesController < ApplicationController
  respond_to :json
  before_filter :find_resource, :only => [:show, :edit, :update, :destroy]

  def index
    @resources = Resource.all
    respond_with @resources
  end

  def show
    respond_with @resource
  end

  def create
    @resource = Resource.new(params[:resource])
    respond_with @resource
  end

  def update
    @resource.update_attributes(params[:resource])
    respond_with @resource
  end

  def destroy
    @resource.destroy
    respond_with @resource
  end

  private
    def find_resource
      @resource = Resource.find(params[:id])
    end

end
