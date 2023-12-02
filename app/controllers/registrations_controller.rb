class RegistrationsController < Devise::RegistrationsController
  skip_before_action :authenticate_user!

  def create
    super
  end

  def new
    @user = User.new
    super
  end
end
