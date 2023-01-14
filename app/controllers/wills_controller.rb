class WillsController < ApplicationController
  def index
    @wills = Will.all
  end
end
