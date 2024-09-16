class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]
  
  def index
    @posts = Post.order(broadcast_date: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to posts_path, success: "番組メモを作成しました"
    else
      flash.now[:danger] = "番組メモを作成できませんでした"
      render :new, status: :unprocessable_entity
    end
  end

  def show; end

  def edit; end

  def update
    if @post.update(post_params)
      redirect_to @post, success: "番組メモを更新しました"
    else
      flash.now[:danger] = "番組メモを更新できませんでした"
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @post.destroy!
    redirect_to posts_path, success: "番組メモを削除しました", status: :see_other
  end

  private

  def post_params
    params.require(:post).permit(:title, :broadcast_date, :content)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
