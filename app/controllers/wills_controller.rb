class WillsController < ApplicationController
  before_action :authenticate_user!, only: [ :will_app_second_page]
  before_action :set_will, only: [:edit, :show]
  def will_app_top_page
  end

  def will_app_second_page
    # user = User.find_by(:secret_key params[:session][:email].downcase)
    # if user && user.authenticate(params[:session][:password])
    #   log_in user
    #   redirect_to root_url
    # else
    #   render 'new'
    # end

    # user = User.find_by(:secret_key params[:secret_key].downcase)
    # if user.secret_key == user.authenticate(params[:secret_key])
    #   log_in user
    #   redirect_to root_url
    # else
    #   render 'new'
    # end
  end

  def will_app_third_page
  end

  def will_app_4th_page
  end

  def index
    @wills = Will.all
    @articles = Article.all
  end

  def new
    @will = Will.new
  end

  def create
    Will.create(will_params)
    
  end

  private
  def will_params
    params.require(:will).permit(:will_address, :image, :content).merge(user_id: current_user.id)
  end

  def set_article
    @will = Will.find(params[:id])
  end
end
