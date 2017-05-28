class PortalsController < ApplicationController
	before_action :authenticate_user!

  def index
  	@portals = Portal.all.order('created_at DESC')
  end

  def show
		@portal = Portal.find(params[:id])
		@containers = @portal.containers.order('position ASC')
  end
end
