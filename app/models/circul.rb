class Circul < ActiveRecord::Base

   belongs_to :father, class_name: "Circul", foreign_key: "father_circul_id"
   has_many :children, class_name: "Circul", foreign_key: "father_circul_id"

  has_many :friends_circuls
  has_many :friends, :through => :friends_circuls
  accepts_nested_attributes_for :friends_circuls, :allow_destroy => true

  has_many :events_circuls
  has_many :events, :through => :events_circuls
  accepts_nested_attributes_for :events_circuls, :allow_destroy => true


  def has_father?
    self.father.present?
  end
  def initial_name
    "#{name} <br />".html_safe
  end
end
