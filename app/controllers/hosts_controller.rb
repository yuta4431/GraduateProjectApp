class HostsController < ApplicationController
  def index
    @q = Host.ransack(params[:q])
    @hosts = @q.result(distinct: true)
  end
  
  def show
    @host = Host.find(params[:id])
  end
end
