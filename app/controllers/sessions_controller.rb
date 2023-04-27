class SessionsController < ApplicationController

  # renders the login view
  def new
    @session_request = SessionRequest.new
  end

  def create
    @session_request = SessionRequest.new(session_request_params)
    if @user = @session_request.authenticate
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new, status: :unauthorized
    end
  end

  def destroy
    session[:user_id] = nil
    # redirect_to
  end

  private
  def session_request_params
    params.require(:session_request).permit(:email, :password)
  end
end