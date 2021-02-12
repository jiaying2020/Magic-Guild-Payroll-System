class HomeController < ApplicationController

    def index
        # redirect_to admin_root_path if user_signed_in? && current_user.admin?
        # redirect_to staff_root_path if user_signed_in? && current_user.staff?
        # redirect_to student_root_path if user_signed_in? && current_user.student?
        redirect_to novice_root_path if user_signed_in?

      end
    
      def about
      end
    
      def qa
      end

end
