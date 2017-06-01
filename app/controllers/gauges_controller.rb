class GaugesController < ApplicationController
  before_action :authenticate_user!
  respond_to :html
	layout 'basic'

  def index
    @gauges = Gauge.all
  end

  def show
    @gauge = Gauge.find(params[:id])
  end

  def new
    @gauge = Gauge.new
  end

  def create
    @gauge = Gauge.new(gauge_params)
    if @gauge.save
      flash[:notice] = 'Successfully created gauge.'
      redirect_to @gauge
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def gauge_params
    params.require(:gauge).permit(:name, :subdomain)
  end
end
