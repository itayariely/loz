class FriendWeekRelation < ActiveRecord::Base
  belongs_to :friend
  belongs_to :week
end
