class RegistrationController < Devise::RegistrationsController

  def create
    super
    # binding.pry
    session[:omniauth] = nil unless @user.new_record?
  end

  def build_resource(*args)
    super
    # binding.pry
    if session[:omniauth]
      @user.apply_omniauth(session[:omniauth])
      @user.valid?
    end
  end

end
