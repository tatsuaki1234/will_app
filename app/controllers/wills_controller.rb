class WillsController < ApplicationController
  before_action :authenticate_user!, only: [ :will_app_second_page]

  def will_app_top_page
  end

  def will_app_second_page
  end

  def index
    @wills = Will.all
  end
end
