class DashboardController < ApplicationController
  def index
  end

  def compltask
    render json: TicketRaw.group(:desk).count
  end
end
