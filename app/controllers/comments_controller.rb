class CommentsController < ApplicationController
  before_action :set_post
  before_action :authenticate_user!
  
  def destroy
    @comment = Comment.find(params[:id])
    if @comment.user_id == current_user.id || @comment.post.user_id == current_user.id
      @comment.destroy
      redirect_to post_path(@post)
    else
      redirect_to post_path(@post)
    end
  end
  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.post_id = @post.id
    if @comment.save
      redirect_to post_path(@post)
    else
      render 'new'
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:comment, :post_id, :user_id)
  end

  def set_post
    @post = Post.find(params[:post_id])
  end


end
