class UsersController < ApplicationController
  
  def index
  end

  def new
  	u = User.new(user_params)
  	u.save
  	redirect_to '/products'
  end


end


private
def user_params
	params.require(:users).permit(:name, :email, :password, :password_confirmation)
end