class HomeController < ApplicationController
  def index
    @home = Categoryproduct.all
    @hopqua = Product.where('display = 13').where('status = 2')
    @giotet = Product.where('display = 14').where('status = 2')
    @giotraicay = Product.where('display = 15').where('status = 2')
    @slide = Slide.all
  end
  def show
    @home = Categoryproduct.all
    @category = Categoryproduct.find(params[:id])
    @product = Product.where(display: params[:id])
    
    render :show_category_product 
   
  end
  

  
  
  
end
