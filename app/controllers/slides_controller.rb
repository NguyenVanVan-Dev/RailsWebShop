class SlidesController < ApplicationController
  layout "admin_layout"
  def index
    @slides = Slide.all
  end

  def show
    @slide = Slide.find(params[:id])
  end

  def new
    @slide = Slide.new
  end

  def create
    @slide = Slide.new(slider_params)

    if @slide.save
      flash.now[:success] = "Add Slide Successfully"
      redirect_to @slide
    else
      flash.now[:danger] = "Add Slide Faile"
      render :new
    end
  end

  def edit
    @slide = Slide.find(params[:id])
  end

  def update
    @slide= Slide.find(params[:id])
    if @slide.update(slide_params)
      flash.now[:success] = "Edit Slide Successfully"
      render :edit
    else
      flash.now[:danger] = "Edit Slide Faile"
      render :edit
    end
  end
  def destroy
    @slide= Slide.find(params[:id])
    @slide.destroy
    flash.now[:danger] = "Delete Slider Successfully "
    redirect_to slides_path
  end
  private
    def slider_params
      params.require(:slide).permit(:name,:title,:image)
    end
end
