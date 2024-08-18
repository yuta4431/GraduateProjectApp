class HostsController < ApplicationController
  def index
    @hosts = Host.all
  end

  def new
    @host = Host.new
  end

  def create
    @host = current_user.hosts.build(host_params)
    if @host.save
      redirect_to host_path(@host), success: "パーソナリティを登録しました"
    else
      flash.now[:danger] = "パーソナリティを登録できませんでした"
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @host = Host.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def host_params
    params.require(:host).permit(:name)
  end
end
