class PortalsController < ApplicationController
  before_action :set_portal, only: [:show, :edit, :update, :destroy]

  def index
    @portals = Portal.all
  end

  def show
    @portal = Portal.find(params[:id])
  end

  def new
    @portal = Portal.new
  end

  def edit
    @portal = Portal.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @portal }
    end
  end

  def create
    @portal = Portal.new(portal_params)
    if @portal.save
      redirect_to @portal, :notice => 'New portal successfully created.'
    else
      render 'new'
    end
  end

  def update
    if @portal.update(portal_params)
      redirect_to @portal, :notice => 'Portal successfully updated.'
    else
      render 'edit'
    end
  end

  def destroy
    @portal.destroy
    redirect_to portals_url, notice: 'Portal was successfully destroyed.'
  end

  private

    def set_portal
      @portal = Portal.find(params[:id])
    end

    def portal_params
      params.require(:portal).permit(:name, :published)
    end
end
