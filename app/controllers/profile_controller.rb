class ProfileController < ApplicationController

  def index
    if(params[:id].present?)
      @users = User.where('id = ' + params[:id])
      #@users = User.find_by_id(params[:id])
    else
      redirect_to :controller => "profile", :action => "index", :id => current_user.id
    end
  end

end
