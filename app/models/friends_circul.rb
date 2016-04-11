class FriendsCircul < ActiveRecord::Base
  belongs_to :friend
  belongs_to :circul
end
