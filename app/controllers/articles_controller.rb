class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def app_show
    @article_item = Article.where(category: "app")
  end
  
  def illust_show
    @article_item = Article.where(category: "illust")
  end
  
  def destroy
    article = Article.find(params[:id]) 
    article.destroy 
    redirect_to new_article_path  
  end

  def edit
    @article = Article.find(params[:id])
    @articles = Article.all
  end
  
  def update
    article = Article.find(params[:id])
    article.update(article_params)
    redirect_to new_article_path
  end

  def new
    @article = Article.new
    @articles = Article.all
  end
  
  def create
    article = Article.new(article_params)
    if article.save
      flash[:success] = "article successfully created"
      redirect_to new_article_path
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end


  private
  
  
  
  # ストロングパラメータ
  def article_params
    params.require(:article).permit(:title, :body, :image, :category)
  end

end
