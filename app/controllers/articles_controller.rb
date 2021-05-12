class ArticlesController < ApplicationController
  def index
    @home = Categoryproduct.all
    @articles = Article.all
  end
  def show
    @home = Categoryproduct.all
    @article = Article.find(params[:id])
  end
  def new
    @home = Category.all
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  private
    def article_params
      params.require(:article).permit(:title, :body)
    end

end
