class WidgetsController < ApplicationController
  def index
    @widgets = Widget.all
  end

  def show
    @widget = Widget.find(params[:id])
  end

  def new
    @widget = Widget.new
  end

  def edit
  end

  def create
    @widget = Widget.new(widget_params)

    if @widget.save
      redirect_to @widget
    else
      render 'new'
    end
  end

  def update
  end

  def destroy
  end

  private

  def widget_params
    params.require(:widget).permit(:name, :description, :body, :css, :field_id)
  end
end
