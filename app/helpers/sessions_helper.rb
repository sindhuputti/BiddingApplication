module SessionsHelper
    def log_in(user)
        session[:user_id] = user.id
    end
    
    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end
    
    def logged_in?
        !current_user.nil?
    end
    
    def current_user?(user)
        user = current_user
    end
    
    def current_item
        @current_item ||= Item.find_by(params[:id])
    end
  
    
    
    def admin_user_check
         current_user.admin?
        
    end
        
end
