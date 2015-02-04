class GameController < ApplicationController

  def new
    @comment = Comment.new
    @comments = Comment.order('created_at DESC')
  end
end
