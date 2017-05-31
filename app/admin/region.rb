ActiveAdmin.register Region do
  config.sort_order = 'updated_at_desc'
  permit_params :name, :code, :label, :svg_path, :is_active

end
