class Friend < ActiveRecord::Base
  has_many :friends_circuls
  has_many :circuls, :through => :friends_circuls

  accepts_nested_attributes_for :friends_circuls, :allow_destroy => true
  def name_with_initial
    "#{name} #{lname}<br />".html_safe
  end
end
