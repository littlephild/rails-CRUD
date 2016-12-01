class ArticlesController < ApplicationController
  def index
    @article = Article.all
  end

  def new
    @article = Article.new
  end

  def create
      @article = Article.new(article_params)
      if @article.save
        redirect_to @article
      else
        render 'new'
      end
  end

  #Get articles params
  private
  def article_params
    params.require(:article).permit(:author, :article)
  end
end
