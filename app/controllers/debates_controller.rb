class DebatesController < ApplicationController

  def index
    @debates = Debate.all.order(created_at: "desc")
  end

  def show
    @debate = Debate.find(params[:id])
  end

  def new
  end

  def create
    @debate = Debate.new(debate_params)
    @debate.save
    redirect_to debates_path
  end

  private
    def debate_params
      params.require(:post).permit(:title, :body)
    end
end
