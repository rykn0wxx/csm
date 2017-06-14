ActiveAdmin.register TicketService do
  config.sort_order = 'updated_at_desc'
  permit_params :name

  menu parent: 'Measures'

  active_admin_import validate: true
end
