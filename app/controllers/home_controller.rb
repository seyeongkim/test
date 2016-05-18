class HomeController < ApplicationController
  def index
    @posts = Post.all.order("created_at desc")
  end
  
  def write
    post = Post.new
    post.title = params[:title]
    post.content = params[:content]
    #@word_num = post.content.scan(/\w+/).size
    #@letter_num = post.content.length
    if post.save


       redirect_to "/home/index"
     else
       render text: post.errors.messages[:title].first
     end
     
    
     
  end
  
  def write_comment
    comment = Comment.new
    comment.content = params[:content]
    comment.post_id = params[:id_post_id]
    comment.save
    redirect_to "/home/index"
  end
end
