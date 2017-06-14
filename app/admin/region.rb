ActiveAdmin.register Region do
  config.sort_order = 'updated_at_desc'
  permit_params :name, :code, :label, :is_active

  preserve_default_filters!
  remove_filter :created_at, :updated_at

  menu parent: 'Dimensions'

  active_admin_import validate: true,
    back: proc { config.namespace.resource_for(Client).route_collection_path }

  index do
    selectable_column
    # id_column
    column 'Name', :name, sortable: :name do |dModel|
      link_to dModel.name, [:admin, dModel]
    end
    column 'Short Code', :code
    column 'Display Label', :label
    column 'Active', :is_active
    column 'Last Updated', :updated_at, :sortable => :updated_at do |dModel|
      dModel.updated_at.strftime('%d-%b %Y')
    end
    actions
  end

end
