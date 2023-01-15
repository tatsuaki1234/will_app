class WillsController < ApplicationController
  before_action :authenticate_user!, only: [ :will_app_second_page]
  before_action :set_will, only: [:edit, :show]
  before_action :set_current_will, only: [:will_app_reader_page_2, :will_app_reader_page_3, :will_app_reader_page_4, :index]

  def will_app_top_page
  end

  def will_app_second_page
  end

  def will_app_reader_page
  end

  def will_app_reader_page_2
  end

  def will_app_reader_page_3
  end

  def will_app_reader_page_4
    @will = Will.find(params[:will_id])
  end


  def index
  end

  def new
    @will = Will.new
  end

  def create
    if Will.create(will_params)
      redirect_to wills_path
    else
      render :new
    end
  end

  def show
  end

  def destroy
    will = Will.find(params[:id])
    will.destroy
  end

  def edit
  end

  def update
    will = Will.find(params[:id])
    will.update(will_params)
  end



  private
  def will_params
    params.require(:will).permit(:will_address, :image, :content).merge(user_id: current_user.id)
  end

  def set_will
    @will = Will.find(params[:id])
  end

  def set_current_will
    @wills = current_user.wills
  end
end
