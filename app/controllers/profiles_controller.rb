class ProfilesController < ApplicationController
   # get /users/:user_id/profile/new
   def new
       @profile = Profile.new
   end
   
   # POST to /users/:user_id/profile
   def create
      @user = User.find(params[:user_id]) 
      @profile = @user.build_profile(profile_params)
      if @profile.save
          flash[:success] = "Profile Created"
          redirect_to user_path(id: params[:user_id])
      else
          flash[:error] = "Creation Failed"
          render action: :new
      end
   end
   
   # GET /users/:user_id/profile/edit
   def edit
      @user = User.find(params[:user_id])
      @profile = @user.profile
   end
   
   # PUT /users/:user_id/profile
   def update
      @user = User.find(params[:user_id])
      @profile = @user.profile
      if @profile.update_attributes(profile_params)
         flash[:success] = "Profile Updated"
         redirect_to user_path(id: params[:user_id])
      else
         flash[:error] = "Profile update failed"
         render action: :edit
      end
   end
   
   private
        def profile_params
           params.require(:profile).permit(:first_name, :last_name, :contact_email, :avatar, :description) 
        end
end