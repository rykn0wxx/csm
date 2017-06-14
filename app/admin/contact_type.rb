ActiveAdmin.register ContactType do
  config.sort_order = 'updated_at_desc'
  permit_params :name, :code

  menu parent: 'Measures'

  active_admin_import validate: true
end
