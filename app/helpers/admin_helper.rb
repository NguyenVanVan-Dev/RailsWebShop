module AdminHelper
    def log_in admin
        session[:admin_id] = admin.id
    end
    def log_out admin
      session.delete :admin_id
    end
  
end
