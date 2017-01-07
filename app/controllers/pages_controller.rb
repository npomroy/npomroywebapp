class PagesController < ApplicationController
   before_action :only_admin, only: [:web_apps, :schools]
   def home
       
   end
   
   def about
       
   end
   
   def web_apps
      
   end
   
   def schools
      
   end
   
   private
      def only_admin
         redirect_to root_path unless current_user.admin
      end
end