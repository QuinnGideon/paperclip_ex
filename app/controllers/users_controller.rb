class UsersController < ApplicationController

	def new
		@user.new
	end

	def create
		@user = User.new(user_params)
			@user.save
			redirect_to root_path
	end

	def delete

	end

	def show
		@user = User.find(params[:id])
	end

	private

	def user_params
		params.require(:blog).permit(:name, :email, :password)

end