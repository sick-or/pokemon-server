class ArticlesController < ApplicationController
  def index
    super
    @articles = Article.all
  end

  def show
    super
    @article = Article.find(params[:id])
    @pokemon = Pokemon.all
  end

  def new
    @article = Article.new
    @pokemon = Pokemon.all
  end

  def create
    @article = Article.new(article_params)
    @pokemon = Pokemon.all

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @article = Article.find(params[:id])
    @pokemon = Pokemon.all
  end

  def update
    @article = Article.find(params[:id])
    @pokemon = Pokemon.all

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path
  end

  private
  def article_params
    params.require(:article).permit(:title, :body, :tags)
  end

end
