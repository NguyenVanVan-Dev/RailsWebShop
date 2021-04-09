class RegisterUserController < ApplicationController
  def registeruser

  end
  def new
    @user = Registeruser.new
  end
  def create
    @user = Registeruser.new(registeruser_params)

    if @user.save
      flash[:success] = "Register success"
      redirect_to  new_register_user_path
    else
      flash[:danger] = "Register failed"
      render :new
    end
  end
  private
  def registeruser_params
    params.require(:registeruser).permit(:name, :password, :password_confirmation)
  end
  
end
