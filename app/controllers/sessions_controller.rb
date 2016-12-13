class SessionsController < ApplicationController

  def new
  end

  def create
      user = User.find_by_username params[:username]
      if user && user.authenticate(params[:password])
        sign_in(user)
        redirect_to root_path, notice: "Sign in successful!"
      else
        flash[:alert] = "Invalid credentials! Please try again."
        render :new
      end
    end

    def destroy
      cookies.signed[:user_id] = nil
      redirect_to root_path, notice: "You've been logged out!"
    end

end
