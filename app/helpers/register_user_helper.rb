module RegisterUserHelper
    def log_out user
        session.delete :user_id
    end
end
