class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article_item = Article.find(params[:id])
  end
  
  def destroy
    article = Article.find(params[:id]) 
    article.destroy 
    redirect_to articles_new_path  
  end

  def edit
    @article = Article.find(params[:id])
    @articles = Article.all
  end
  
  def update
    article = Article.find(params[:id])
    article.update(article_params)
    redirect_to article_path(article.id)
  end

  def new
    @article = Article.new
    @articles = Article.all
  end
  
  def create
    article = Article.new(article_params)
    if article.save
      flash[:success] = "article successfully created"
      redirect_to articles_new_path
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
