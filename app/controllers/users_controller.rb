class UsersController < ApplicationController

	def index
		@users = User.all 
	end

	def show
		@user = User.find(params[:id])
		# @articles = @user.events
		@articles = Article.where({user_id: params[:id]})
	end

	def new
		@user = User.new
	end

	def create
		User.create(user_params)
		redirect_to(users_path)
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		User.find(params[:id]).update(user_params)
		redirect_to(users_path)
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy

		@articles = Article.where({user_id: params[:id]})
		@articles.each do |article|
			article.destroy
		end

		redirect_to(users_path)
	end

	private

	def user_params
		params.require(:user).permit(:name, :email, :u_img, :location)
	end
end