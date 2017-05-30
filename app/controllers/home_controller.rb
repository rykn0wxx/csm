class HomeController < ApplicationController
	before_action :authenticate_user!

  def index
		@wid = Portal.first.containers.find(1)
  end

end
