class SearchController < ApplicationController
  def index
    search_word = params[:q]
    
    @q_programs = Program.joins(:hosts, :posts).ransack(
      title_or_channel_or_hosts_name_or_posts_content_cont: search_word
    )
    @programs_results = @q_programs.result(distinct: true)

    @q_hosts = Host.ransack(name_cont: search_word)
    @hosts_results = @q_hosts.result(distinct: true)

    @q_posts = Post.ransack(title_or_content_cont: search_word)
    @posts_results = @q_posts.result(distinct: true)

    @search_word = search_word
    
    if @programs_results.empty? && @hosts_results.empty? && @posts_results.empty?
      @no_results = true
    end
  end
end