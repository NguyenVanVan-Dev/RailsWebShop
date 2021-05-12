class RegisterUserController < ApplicationController
  def registeruser

  end
  def new
    @home = Categoryproduct.all
    @user = Registeruser.new
  end
  def create
    @user = Registeruser.new(registeruser_params)

    if @user.save
      flash[:success] = "Register success"
      session[:user_name] = @user.name
      redirect_to  root_path
    else
      flash[:danger] = "Register failed"
      render :new
    end
  end
  def destroy 
    session.delete :user_name
    flash[:success] = "You are logged out"
    redirect_to new_register_user_path
  end
  
  private
  def registeruser_params
    params.require(:registeruser).permit(:name, :password, :password_confirmation)
  end
  
end
