class SearchController < ApplicationController
  def index
    @q = Program.ransack(params[:q])
    @programs = @q.result(distinct: true).includes(:host, :posts)
    @hosts = Host.ransack(params[:q]).result(distinct: true)
    @posts = Post.ransack(params[:q]).result(distinct: true)
  end
end
