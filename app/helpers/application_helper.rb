module ApplicationHelper
  def box_info_number(model = {}, m = nil, fld = :all, aggr = 'count')
    if model[:number].nil?
      m = model[:m]
      fld = model[:fld]
      case aggr
      when 'count'
        znum = m.count(fld)
      when 'sum'
        znum = m.sum(fld)
      when 'average'
        znum = m.average(fld)
      when 'minimum'
        znum = m.minimum(fld)
      when 'maximum'
        znum = m.maximum(fld)
      end
    else
      znum = model[:number]
    end
    content_tag(:span, znum, :class => 'info-box-number')
  end
  def show_icon(name = nil)
    rand_num = SecureRandom.random_number(10)
    ficons = %w[fa-bank fa-archive fa-book fa-building fa-clone fa-coffee fa-cubes fa-envelope-o fa-folder-open  fa-hdd-o]
    ficons = name || ficons[rand_num]
    content_tag(:i, nil, :class => 'fa '+ ficons )
  end
end
