ActiveAdmin.register Client do
  config.sort_order = 'updated_at_desc'
  permit_params :name, :is_active

  preserve_default_filters!
  remove_filter :created_at, :updated_at

  active_admin_import validate: true

  menu parent: 'Dimensions'
end
