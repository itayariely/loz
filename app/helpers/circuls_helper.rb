module CirculsHelper

  def get_circul_friends(circul)
    friends = circul.friends.collect{|f| f.id}.flatten.uniq
    friends += return_circul_friends(circul) if circul.children.any?
    # friends
    friends.flatten.uniq
  end

  def return_circul_friends(circul)
    r = []
    circul.children.each do |child|
    r <<   child.friends.collect{|f| f.id}.flatten.uniq
    end
    r
  end

end
