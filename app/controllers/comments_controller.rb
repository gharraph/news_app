class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @link = Link.find params[:link_id]
  end
  
  def edit
    
  end
  
  def update
    
  end
  
  def create
    @comment = Comment.create(:user_id => params[:comment][:user_id], 
    :link_id => params[:comment][:link_id], :body => params[:comment][:body])
    redirect_to root_path
  end
end
