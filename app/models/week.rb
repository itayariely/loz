class Week < ActiveRecord::Base

  enum frequency: [ :פעם_בשבוע, :פעם_בשבועיים, :פעם_בשלושה_שבועות, :פעם_בחודש ]
  enum tomezon: [ :בוקר, :צהריים, :אחרהצ, :ערב ]

  has_many :week_days, :dependent => :destroy

end
