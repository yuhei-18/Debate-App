class DebatesController < ApplicationController

  def index
    @debates = Debate.all.order(created_at: "desc")
  end

  def show
    @debate = Debate.find(params[:id])
    @comments = Comment.where(debate_id: @debate.id).order(created_at: "desc")
  end

  def new
    @debate = Debate.new
  end

  def create
    @debate = Debate.new(debate_params)
    if @debate.save
      redirect_to debates_path
    else
      render "new"
    end
  end

  def edit
    @debate = Debate.find(params[:id])
  end

  def update
    @debate = Debate.find(params[:id])
    if @debate.update(debate_params)
      redirect_to debates_path
    else
      render "edit"
    end
  end

  def destroy
    @debate = Debate.find(params[:id])
    @debate.destroy
    redirect_to debates_path
  end

  private
    def debate_params
      params.require(:debate).permit(:title, :body)
    end
end
