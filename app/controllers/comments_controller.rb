class CommentsController < ApplicationController
  before_action :authorize_user

  def create
    @comment = Comment.new(comment_params)
    @hat_pic = HatPic.find(params[:comment][:hat_pic_id])
    if @comment.save
      redirect_to hat_pic_path(params[:comment][:hat_pic_id])
    else
      render :"hat_pics/show"
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @hat_pic = @comment.hat_pic
    @comment.destroy
    redirect_to hat_pic_path(@hat_pic)
  end

  private
  
  def comment_params
    params.require(:comment).permit(:content, :hat_pic_id, :user_id)
  end
end
