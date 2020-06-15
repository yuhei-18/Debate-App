class DebatesController < ApplicationController

  def index
    @debates = Debate.all.order(created_at: "desc")
  end
end
