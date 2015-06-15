class ArticlesController < ApplicationController

	def about 
		@articles = Article.all.sample(3)
	end

	def index
		@articles = Article.paginate(:page => params[:page], :per_page => 6)
	end

	def show
		@article = Article.find(params[:id])
		@user = User.find(@article.user_id)
	end
	
	def rand
		@articles = Article.all 
		@article = @articles.sample
		@user = User.find(@article.user_id)
		redirect_to @article
	end

	def new
		@article = Article.new
		@users = User.all
	end

	def create
		Article.create(article_params)
		redirect_to(articles_path)
	end

	def edit
		@article = Article.find(params[:id])
	end

	def update
		Article.find(params[:id]).update(article_params)
		redirect_to(articles_path)
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy
		redirect_to(articles_path)
	end

	private

	def article_params
		params.require(:article).permit(:title, :content, :img_url, :user_id)
	end
end