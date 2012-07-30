class Comment < ActiveRecord::Base
  attr_accessible :link_id, :user_id, :body
end
