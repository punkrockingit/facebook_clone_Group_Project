class ProfileController < ApplicationController

  def index
    if(params[:id].present?)
      @users = User.where('id = ' + params[:id])
      #@users = User.find_by_id(params[:id])
    else
      redirect_to :controller => "profile", :action => "index", :id => current_user.id
    end
  end

  def show
    if(params[:id].present?)
      @users = User.find(params[:id])
      #@users = User.find_by_id(params[:id])
    else
      redirect_to :controller => "profile", :action => "show", :id => current_user.id
    end
  end

  def edit
    @user = User.find_by_id(params[:id])
  end

  def update
    @user = User.where('id = ' + params[:id])

    if @user.update_all(user_params)
      # Handle a successful update.
      redirect_to :action => 'index'
      #redirect_to 'index'
    else
      # Handle a successful update.
      render 'edit'
    end
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :birthday, :gender, :works_for, :from_city, :from_state,
    :lives_in_city, :lives_in_state)
  end

end
