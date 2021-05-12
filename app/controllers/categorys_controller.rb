class CategorysController < ApplicationController
  layout 'admin_layout'
  def index
    @categorys = Categoryproduct.all
  end
  def show
    @category = Categoryproduct.find(params[:id])
  end
  def new
    @category = Categoryproduct.new
  end
  def create
    @category = Categoryproduct.new(category_params)

    if @category.save
      flash.now[:success] = "Add Category Successfully"
      render :new
    else
      flash.now[:danger] = "Add Category Faile"
      render :new
    end
  end
  def edit
    @category = Categoryproduct.find(params[:id])
  end

  def update
    @category = Categoryproduct.find(params[:id])

    if @category.update(category_params)
      flash.now[:success] = "Edit Category Successfully"
      render :edit
    else
      flash.now[:danger] = "Edit Category Faile"
      render :edit
    end
  end
  def destroy

    @category = Categoryproduct.find(params[:id])
    @category.destroy
    flash.now[:danger] = "Delete Category "
    redirect_to categorys_url
  end


  private
    def category_params
      params.permit(:name, :parent,:slug,:desc,:status)
    end
end
