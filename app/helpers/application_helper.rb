module ApplicationHelper

  def get_friend_circuls(circuls)
     ar = circuls.collect{|f| f.name}.flatten.uniq
    circuls.each do |circul|
      ar += return_friend_circuls_parents(circul) if circul.father.present?
      # ar += [circul.father.name] if circul.father.present?
      # ar += [circul.father.father.name] if circul.father.father.present?
    end
    ar.flatten.uniq
  end

  def return_friend_circuls_parents(circul)
    r = []
    r << [circul.father.name]
    if circul.father.father.present?
      r << return_friend_circuls_parents(circul.father)
    end
    r.flatten.uniq

  end



  def father_shower(son)
    html = ""
    if son.has_father?
      if son.father.has_father?
        html += father_shower(son.father)
        html += son.name
      else
        html += son.father.name
        html += son.name
      end
    else
      html += son.name
    end
    html
  end

end
