class UsersController < ApplicationController
 
 # displays the new form to be saved (GET REQUEST)
  def new
    @user = User.new
  end
  
end
