class AdminController < ApplicationController
  layout "admin_layout_login"

  def new

  end
  def show
    render :show_dashboard ,layout:"admin_layout"
  end

  def create
    admin = Admin.find_by email: params[:admin][:email].downcase
    if admin && admin.authenticate(params[:admin][:password])
      flash[:success] = "Login success"
      log_in admin
      redirect_to show_dashboard_path
     
    else
      flash.now[:danger] = "Invalid email/password combination"
      render :new
    end
  end

  def destroy
  end
end
