class WidgetsController < ApplicationController
  before_action :authenticate_user!

  respond_to :html
	layout 'rykn0wxx'

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
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
