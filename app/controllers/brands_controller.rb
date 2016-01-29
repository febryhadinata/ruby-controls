class BrandsController < ApplicationController

  before_action :require_user
  before_action :require_admin

  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.new(brand_params)
      if @brand.save
         redirect_to root_url
      else
         redirect_to new_brand_url
      end
  end

  def show
    @brand = Brand.find(params[:id])
  end

  def index
    # @brands = Brand.all
    @brands = Brand.paginate(page: params[:page])
    respond_to do |format|
      format.html  # index.html.erb
      format.json  { render :json => @brands }
    end
  end

   def edit
      @brand = Brand.find(params[:id])
   end

   def update
      @brand = Brand.find(params[:id])
      if @brand.update_attributes(brand_params)
         redirect_to brands_url
      else
         render 'edit'
      end
   end

  def destroy
    Brand.find(params[:id]).destroy
    flash[:success] = "brand deleted"
    redirect_to brands_url
  end

  private
    def brand_params

      params.require(:brand).permit(:name)
    end

end
