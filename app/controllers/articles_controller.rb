class ArticlesController < ApplicationController
  def index
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      # success
      flash[:success] = 'Article has been created'
      redirect_to articles_path
    else
      # error
      flash[:danger] = 'Article was not created'
      redirect_to 'new'
    end
  end

  def show

  end

  private

  def article_params
    params.require(:article).permit(:title, :body)
  end
end