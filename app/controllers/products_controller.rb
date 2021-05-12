class ProductsController < ApplicationController
  
  layout 'admin_layout'
  def index
    @products = Product.all
  end

  def show
    @product= Product.find(params[:id])
  end

  def new
    @product = Product.new
  end
  def create
    
    @product = Product.new(product_params)

    if @product.save
      flash.now[:success] = "Add Product Successfully"
     redirect_to @product
    else
      flash.now[:danger] = "Add Product Faile"
      render :new
    end
  end
  

  def edit
    @product= Product.find(params[:id])
  end

  def update
    @product= Product.find(params[:id])
    if @product.update(product_params)
      flash.now[:success] = "Edit Product Successfully"
      render :edit
    else
      flash.now[:danger] = "Edit Product Faile"
      render :edit
    end
  end

  def destroy
    @product= Product.find(params[:id])
    @product.destroy
    flash.now[:danger] = "Delete Product Successfully "
    redirect_to products_path
  end
  private
    def product_params
      params.require(:product).permit(:name,:slug,:quantity,:display,:price,:status,:content,:image)
    end
end
