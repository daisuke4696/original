class Users::RegistrationsController < Devise::RegistrationsController
 before_action :create, only: [:complete]

  def confirm 
    @user = User.new(sign_up_params)
    if @user.valid?
      render :action => 'confirm'
    else
     render :action => 'new'
    end
  end

  def complete
    render :action => 'complete'
  end
end