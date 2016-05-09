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

def progress_color(present)
  case present
  when 0..25
    "success"
  when 26..50
    "info"
  when 51..75
    "warning"
  when 76..85
    "danger"
  when 86..200
    "danger progress-bar-striped active"
  end

end


def get_event_circuls(circuls)
   ar = circuls.collect{|f| f.id}.flatten.uniq
  circuls.each do |circul|
    ar += return_event_circuls_parents(circul) if circul.father.present?
    # ar += [circul.father.name] if circul.father.present?
    # ar += [circul.father.father.name] if circul.father.father.present?
  end
  ar.flatten.uniq
end

def return_event_circuls_parents(circul)
  r = []
  r << [circul.father.id]
  if circul.father.father.present?
    r << return_event_circuls_parents(circul.father)
  end
  r.flatten.uniq

end


end
