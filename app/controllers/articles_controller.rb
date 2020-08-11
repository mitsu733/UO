class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    
  end

  def new
    @article = Article.new
  end
  
  def create
    article = Article.new(article_params)
    if article.save
      flash[:success] = "article successfully created"
      redirect_to :root
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
  private
  
  
  
  # ストロングパラメータ
  def article_params
    params.require(:article).permit(:title, :body, :image)
  end

end
