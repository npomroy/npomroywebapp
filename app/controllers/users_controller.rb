class UsersController < ApplicationController
    before_action :authenticate_user!
    before_action :only_admin, only: :index
    
    # GET /users/:id
    def show
       @user = User.find(params[:id]) 
    end
    
    # GET /users
    def index
       @users = User.includes(:profile) 
    end
    
    private
        def only_admin
          redirect_to root_path unless current_user.admin
        end
end