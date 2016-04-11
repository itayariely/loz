class Circul < ActiveRecord::Base

   belongs_to :father, class_name: "Circul", foreign_key: "father_circul_id"
   has_many :children, class_name: "Circul", foreign_key: "father_circul_id"

  has_many :friends_circuls
  has_many :friends, :through => :friends_circuls
  accepts_nested_attributes_for :friends_circuls, :allow_destroy => true


  def has_father?
    self.father.present?
  end
end
