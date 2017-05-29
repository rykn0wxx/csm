ActiveAdmin.register WidgetField do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
permit_params do
  permitted = [:permitted, :attributes]
  permitted << :other if params[:action] == 'create' && current_user.admin?
  permitted
end

end

# config.sort_order = 'updated_at_desc'
# permit_params :name, :field_type, :required, :required, :widget_type_id
