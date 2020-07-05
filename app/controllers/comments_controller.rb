class CommentsController < ApplicationController
  def create
    @debate = Debate.find_by(params[:id])
    @Comment = @debate.comments.create(comment_params)
  end

  private
    def comment_params
      params.require(:comment).permit(:name, :age, :profession, :message)
    end
end
