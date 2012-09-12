class CommentsController < ApplicationController
before_filter :get_parent


  def new
    @comment = @parent.comments.build
  end

  def index
    @comments = @parent.comments.order("created_at ASC")
    
  end
  
  def edit
    
  end
  
  def update
    
  end
  
  def create
    @comment = @parent.comments.create(params[:comment])
    respond_to do |format|
      if @comment.save
        format.js
        format.html { redirect_to link_comments_path(@comment.link) }
      else
        flash[:error] = "Comment did not save!"
        render 'new'
      end
    end
  end

 protected
20
   
21
  def get_parent
    @parent = Link.find_by_id(params[:link_id]) if params[:link_id]
    @parent = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
    #redirect_to root_path unless defined?(@parent)
  end

end
