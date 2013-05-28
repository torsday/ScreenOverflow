class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def create
    @comment = Comment.new(params[:comment])
    @comment.user = current_user
    @comment.save
    render :"comments/show", :layout=>false, :locals=>{:comment=>@comment}
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update_attributes(params[:comment])
    redirect_to comment_path(@comment)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @the_post = @comment.commentable
    @comment.destroy
    redirect_to post_path(@the_post)
  end

end
