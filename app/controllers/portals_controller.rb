class PortalsController < ApplicationController
	before_action :authenticate_user!

  def index
  	@portals = Portal.all.order('created_at DESC')
  end

  def show
  end
end
