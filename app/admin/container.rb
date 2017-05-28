ActiveAdmin.register Container do
	belongs_to :portal
  navigation_menu :portal

	config.sort_order = 'updated_at_desc'
	permit_params :name, :position, :portal_id, :css_class, :icon

	index do
		selectable_column
		# id_column
		column 'Name', :name, sortable: :name do |dModel|
			link_to dModel.name, [:admin, dModel.portal, dModel]
		end
		column 'Portal Page', :portal
		column 'Position', :position
		column 'Base Class', :css_class
		column 'Icon', :icon, :sortable => :icon do |dModel|
				i :class => "fa fa-fw #{dModel.icon}"
		end
		column 'Last Updated', :updated_at, :sortable => :updated_at do |dModel|
			dModel.updated_at.strftime('%d-%b %Y')
		end
		actions
	end

	sidebar 'Container Rows', :only => [:show, :edit] do
		ul do
			resource.rows.each do |r|
				li link_to r.name, admin_container_row_path(resource.id, r.id)
			end
		end
		link_to 'View All', admin_container_rows_path(resource)
	end

end
