class BrandsController < ApplicationController

  before_action :require_user
  before_action :require_admin

  def new
  end

  def create
  end

  def show
  end

  def index
    @test = Brand.all
  end

end
