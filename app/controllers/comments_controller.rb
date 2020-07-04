class CommentsController < ApplicationController
  def new
    @Comment = Comment.new
  end


end
