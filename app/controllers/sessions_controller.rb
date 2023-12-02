class SessionsController < Devise::SessionsController
  skip_before_action :authenticate_user!

  # GET /resource/sign_in
  def new
    super
  end

  # POST /resource/sign_in
  def create
    super
  end
end
