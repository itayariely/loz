class Calendar < ActiveRecord::Base
  enum calendar_type: [:order_for, :calendar]
  def key
    id
  end
  def label
    name
  end
end
