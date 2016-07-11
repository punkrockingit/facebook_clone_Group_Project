class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :email_confirmation, :password, :birthday, :gender)
  end


  def
  after_sign_up_path_for (resource)
    "/profile/#{params[:id]}"
  end

  def after_sign_in_path_for(resource)
    "/profile/#{params[:id]}"
  end

end
