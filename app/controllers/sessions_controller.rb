class SessionsController < ApplicationController

  def create 
    @user = User.find_or_create_by(uid: request.env["omniauth"]["uid"]) do |u| 
      u.name = request.env["omniauth.auth"]["info"]["name"]
    end 

    sessions[:user_id] = @user.id 
  end 
end
