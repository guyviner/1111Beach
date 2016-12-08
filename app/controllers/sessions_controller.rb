class SessionsController < ApplicationController

  def create
      user = User.find_by_username params[:username]
      cookies[:attempts] ||= 1
      if user && user.authenticate(params[:password])
        sign_in(user)
        redirect_to root_path, notice: "Sign in successful!"
      elsif cookies[:attempts].to_i >= 3
        redirect_to new_password_reset_path, alert: "Account locked! Please reset password."
      else
        flash[:alert] = "Wrong credentials!"
        current_attempts = cookies[:attempts].to_i
        current_attempts += 1
        cookies[:attempts] = current_attempts
        render :new
      end
    end

    def destroy
      cookies.signed[:user_id] = nil
      cookies[:attempts] = nil
      redirect_to root_path, notice: "You are logged out!"
    end

end
