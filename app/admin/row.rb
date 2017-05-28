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

end
