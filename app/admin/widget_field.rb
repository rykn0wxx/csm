ActiveAdmin.register WidgetField do
  config.sort_order = 'updated_at_desc'
	permit_params :name, :field_type, :required, :field_val, :widget_type_id, :_destroy

  # menu false


end
