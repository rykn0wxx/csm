class PortalsController < ApplicationController
	before_action :authenticate_user!

	respond_to :html
	layout 'rykn0wxx'

  def index
  	@portals = Portal.all.order('created_at ASC')
  end

  def show
		@portal = Portal.find(params[:id])
		# @containers = @portal.containers.order('position ASC')
  end
end
