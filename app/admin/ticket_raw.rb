ActiveAdmin.register TicketRaw do
  config.sort_order = 'updated_at_desc'
  permit_params :opened_at, :resolved_at, :ticket_service_id, :ticket_symptom_id, :ticket_type_id, :contact_type_id, :desk_id, :client_id, :region_id, :group_name, :location

  preserve_default_filters!
  remove_filter :created_at, :updated_at

  active_admin_import validate: true,
    headers_rewrites: { :'ticket_service_id' => :ticket_service_id,
      :'ticket_symptom_id' => :ticket_symptom_id,
      :'ticket_type_id' => :ticket_type_id,
      :'contact_type_id' => :contact_type_id,
      :'desk_id' => :desk_id,
      :'client_id' => :client_id,
      :'region_id' => :region_id
    },
    before_batch_import: -> (importer) {
      fldvals = importer.values_at(:ticket_type_id)
      fldarrs = TicketType.where(code: fldvals).pluck(:code, :id)
      flds = Hash[*fldarrs.flatten]
      importer.batch_replace(:ticket_type_id, flds)

      fldvals = importer.values_at(:ticket_service_id)
      fldarrs = TicketService.where(name: fldvals).pluck(:name, :id)
      flds = Hash[*fldarrs.flatten]
      importer.batch_replace(:ticket_service_id, flds)

      fldvals = importer.values_at(:ticket_symptom_id)
      fldarrs = TicketSymptom.where(name: fldvals).pluck(:name, :id)
      flds = Hash[*fldarrs.flatten]
      importer.batch_replace(:ticket_symptom_id, flds)

      fldvals = importer.values_at(:contact_type_id)
      fldarrs = ContactType.where(name: fldvals).pluck(:name, :id)
      flds = Hash[*fldarrs.flatten]
      importer.batch_replace(:contact_type_id, flds)

      fldvals = importer.values_at(:desk_id)
      fldarrs = Desk.where(code: fldvals).pluck(:code, :id)
      flds = Hash[*fldarrs.flatten]
      importer.batch_replace(:desk_id, flds)

      fldvals = importer.values_at(:client_id)
      fldarrs = Client.where(name: fldvals).pluck(:name, :id)
      flds = Hash[*fldarrs.flatten]
      importer.batch_replace(:client_id, flds)

      fldvals = importer.values_at(:region_id)
      fldarrs = Region.where(code: fldvals).pluck(:code, :id)
      flds = Hash[*fldarrs.flatten]
      importer.batch_replace(:region_id, flds)
    },
    back: proc { config.namespace.resource_for(TicketRaw).route_collection_path }

end
