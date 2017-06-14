ActiveAdmin.register Project do

  config.sort_order = 'updated_at_desc'
  permit_params :region_id, :client_id, :name, :is_active

  preserve_default_filters!
  remove_filter :created_at, :updated_at

  menu parent: 'Dimensions'

  active_admin_import validate: true,
    headers_rewrites: { :'client_parent' => :client_id, :'region_parent' => :region_id },
    before_batch_import: -> (importer) {
      zclients = importer.values_at(:client_id)
      zclients_arr = Client.where(name: zclients).pluck(:name, :id)
      zclient = Hash[*zclients_arr.flatten]
      importer.batch_replace(:client_id, zclient)

      zregions = importer.values_at(:region_id)
      zregions_arr = Region.where(name: zregions).pluck(:name, :id)
      zregion = Hash[*zregions_arr.flatten]
      importer.batch_replace(:region_id, zregion)
    },
    back: proc { config.namespace.resource_for(Project).route_collection_path }

end
