class SessionsController < ApplicationController

  def index
  end

  def destroy
    current_user = nil
    redirect_to root_url, :notice => "Signed out!"
  end

end
