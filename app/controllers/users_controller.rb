class UsersController < ApplicationController

	def new 
	  @user = User.new
	end

	def create 
		@user = User.new(user_params)
		if @user.save
			flash[:success] = "Congrats #{@user.username}. You have signed in successfully!"
			redirect_to articles_path
		else 
			render 'new'
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
			flash[:success] = "Hey #{@user.username}. You successfully updated your account"
			redirect_to articles_path
		else 
			render 'edit'
		end
	end

	private

	def user_params
		params.require(:user).permit(:username, :email, :password)
	end

end