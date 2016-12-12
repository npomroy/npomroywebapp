class ProfilesController < ApplicationController
   # get /users/:user_id/profile/new
   def new
       @profile = Profile.new
   end
end