ActiveAdmin.register Portal do
	config.sort_order = 'updated_at_desc'
	permit_params :title, :short_description, :published

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

end
