class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @link = Link.find params[:link_id]
  end

  def index
    @link = Link.find(params[:link_id])
    @comments = @link.comments.order("created_at ASC")
    
  end
  
  def edit
    
  end
  
  def update
    
  end
  
  def create
    @link = Link.find params[:link_id]
    @comment = @link.comments.create(params[:comment])
    respond_to do |format|
      if @comment.save
        format.js
      else
        flash[:error] = "Comment did not save!"
        render 'new'
      end
    end
  end
end
