class CommentsController < ApplicationController

  
  def create
    respond_to do |format|
      if current_user
        @comment = current_user.comments.build(comment_params)
        if @comment.save
        else
        end
        format.html {redirect_to root_url}
        format.js
      else
        format.html {redirect_to root_url}
        format.js {render nothing: true}
      end
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
