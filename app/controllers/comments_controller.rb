class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    puts "T" * 50
    p params
    #find link by format as I could not pass id as a key in the params hash
    @link = Link.find params[:format]
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
