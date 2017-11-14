class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @hat_pic = HatPic.find(params[:comment][:hat_pic_id])
    if @comment.save
      redirect_to hat_pic_path(params[:comment][:hat_pic_id])
    else
      render :"hat_pics/show"
    end
  end

  private
  
  def comment_params
    params.require(:comment).permit(:content, :hat_pic_id, :user_id)
  end
end
