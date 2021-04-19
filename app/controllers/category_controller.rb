class CategoryController < ApplicationController
  layout "admin_layout"
  
  def index
    @category = Category.all 
    render :index , layout:"application"
  end
  def show
    
    @category = Category.all 
    @categoryproduct = Category.find(params[:id])
    
    # Khi co model San Pham suwa Category.find(params[:id]) => Product.where()
    render :categoryproduct , layout:"application"
    
  end
  
  def newcategory
    render :newcategory
  end

  def showcategory
    @category = Category.all
  end
  def addcategory
    @category = Category.new(category_params)
    if @category.save
      flash[:success] = "Add category success"
      redirect_to  newcategory_path
    else
      flash[:danger] = "Add category failed"
      render :newcategory
    end
    
  end
  private
  def category_params
    params.permit(:category_slug,:category_parent, :category_name,:category_status,:category_desc)
  end
end
