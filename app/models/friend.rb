class Friend < ActiveRecord::Base
  has_many :friends_circuls, :dependent => :destroy
  has_many :circuls, :through => :friends_circuls
  accepts_nested_attributes_for :friends_circuls, :allow_destroy => true

  validates :name, :lname,  presence: true

  def name_with_initial
    "#{name} #{lname}<br />".html_safe
  end



  def all_parent_getter
    a =[]
    circuls.each do |circul|
      a << parent_getter(circul)
    end
    a.flatten.uniq
  end

  def parent_getter(circul)
    b = []
    b << circul.id
    if circul.father.present?
      b << parent_getter(circul.father)
    end
    b
  end


    #default ordering
    default_scope {
      order("name ASC")
    }
end
