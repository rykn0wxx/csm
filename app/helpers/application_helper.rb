module ApplicationHelper

  def link_to_add_fields(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize, f: builder)
    end
    link_to(name, '#', class: "add_field btn btn-default btn-sm", data: {id: id, fields: fields.gsub("\n", "")})
  end

  def box_info_number(model = {}, aggr = 'count')
    if model[:m].present?
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
