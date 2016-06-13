class Week < ActiveRecord::Base

  enum frequency: [ :פעם_בשבוע, :פעם_בשבועיים, :פעם_בשלושה_שבועות, :פעם_בחודש ]
  enum tomezon: [ :בוקר, :צהריים, :אחרהצ, :ערב ]

  has_many :circul_week_relations, :dependent => :destroy
  has_many :circuls, :through => :circul_week_relations
  accepts_nested_attributes_for :circul_week_relations, :allow_destroy => true

  has_many :friend_week_relations, :dependent => :destroy
  has_many :friends, :through => :friend_week_relations
  accepts_nested_attributes_for :friend_week_relations, :allow_destroy => true

  has_many :week_days, :dependent => :destroy

  validates :name, :frequency, :houers, :tomezon, presence: true
end
