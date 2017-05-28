ActiveAdmin.register Container
ActiveAdmin.register Row do
  belongs_to :container
  navigation_menu :container

  config.sort_order = 'updated_at_desc'
	permit_params :name, :position, :container_id, :row_class

  index do
		selectable_column
		# id_column
		column 'Name', :name, sortable: :name do |dModel|
			link_to dModel.name, [:admin, dModel.container, dModel]
		end
		column 'Parent Container', :container
		column 'Position', :position
		column 'Row Class', :row_class
		column 'Last Updated', :updated_at, :sortable => :updated_at do |dModel|
			dModel.updated_at.strftime('%d-%b %Y')
		end
		actions
	end

  sidebar 'Row Columns', :only => [:show, :edit] do
		ul do
			resource.columns.each do |c|
				li link_to c.name, admin_row_column_path(resource.id, c.id)
			end
		end
		link_to 'View All', admin_row_columns_path(resource)
	end

end
