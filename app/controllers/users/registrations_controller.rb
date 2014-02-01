class Users::RegistrationsController < Devise::RegistrationsController

  def create
    super
    current_user.generate_api_key
  end

end
