class ArticlesController < ApplicationController
  before_action :set_article, only: [:edit, :show]
  # before_action :move_to_index, except: [:index, :show, :search]

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    Article.create(article_params)
  end

  def show
  end

  def destroy
    article = Article.find(params[:id])
    article.destroy
  end

  def edit
  end

  def update
    article = Article.find(params[:id])
    article.update(article_params)
  end

  def search
    @articles = Article.search(params[:keyword])
    @articles.count
  end

  private
  def article_params
    params.require(:article).permit(:title, :image, :content).merge(user_id: current_user.id)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
