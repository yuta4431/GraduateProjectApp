class HostsController < ApplicationController
  def index
    @hosts = Host.all
  end

  def new
    @host = Host.new
  end

  def create
    @host = user.hosts.build(host_params)
    if @host.save
      redirect_to host_path(@host), success: "パーソナリティを登録しました"
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
