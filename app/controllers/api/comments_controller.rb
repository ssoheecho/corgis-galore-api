class Api::CommentsController < ApplicationController
  def index
    @comments = Comment.all
    render json: @comments
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      render json: @comment
    else
      render json: { errors: { message: "FAILED TO POST COMMENT"}}
    end
  end

  def update
    @comment = Comment.find_by(id: params[:id])
    if @comment.update(updatecomment_params)
      render json: @comment
    else
      render json: { errors: { message: "FAILED TO POST COMMENT"}}
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:content, :corgi_id)
    end

    def updatecomment_params
      params.require(:comment).permit(:likes)
    end
end
