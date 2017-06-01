ActiveAdmin.register Portal do
	config.sort_order = 'updated_at_desc'
	permit_params :title, :short_description, :published

	preserve_default_filters!
  remove_filter :created_at, :updated_at

	index do
		selectable_column
		# id_column
		column 'Title', :title, sortable: :title do |dModel|
			link_to dModel.title, [:admin, dModel]
		end
		column 'Short Description', :short_description, sortable: :short_description
		column 'Last Updated', :updated_at, :sortable => :updated_at do |dModel|
			dModel.updated_at.strftime('%d-%b %Y')
		end
		actions
	end

	sidebar 'Portal Containers', :only => [:show, :edit] do
		ul do
			resource.containers.each do |c|
				li link_to c.name, admin_portal_container_path(resource.id, c.id)
			end
		end
		link_to 'View All', admin_portal_containers_path(resource)
	end

end
