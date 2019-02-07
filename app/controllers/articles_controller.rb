class ArticlesController < ApplicationController
	
	def new
		@article = Article.new
	end
	
	def create
		@article = Article.new (article_params)
		if @article.save 
			#show the message of successful saveand
			#and go to the show templete (article_path) which takes id of the artile
			flash[:notice] = "The article was succesfully created"
			#where we are going to display this massage flash, it will be the raper template application.html.erb
			redirect_to article_path(@article)
		else
			#show error massage
			#and back to the new template
			render 'new'
		end
	end
	def show
		@article = Article.find(params[:id])
	end
	private
		def article_params
			params.require(:article).permit(:title, :description)
		end
	
end