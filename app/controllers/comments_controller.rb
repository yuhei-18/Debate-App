class CommentsController < ApplicationController
  def create
    @debate = Debate.find(params[:debate_id])
    @debate.comments.create(comment_params)
    redirect_to debate_path(@debate)
  end

  private
    def comment_params
      params.require(:comment).permit(:name, :age, :profession, :message)
    end
end
