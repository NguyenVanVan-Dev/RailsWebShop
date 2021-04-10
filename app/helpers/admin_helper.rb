module AdminHelper
    def log_in admin
        session[:admin_id] = admin.id
      end
end
