class CategoryController < ApplicationController
  layout "admin_layout"
  def newcategory
    render :newcategory
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
