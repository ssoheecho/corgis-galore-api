class Api::CommentsController < ApplicationController
  def index
    @comments = Comment.all
    render json: @comments
  end

  def create
    byebug
    @comment = Comment.new(comment_params)
    if @comment.save
      render json: @comment
    else
      render json: { errors: { message: "FAILED TO POST COMMENT"}}
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:content)
    end
end
