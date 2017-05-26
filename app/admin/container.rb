ActiveAdmin.register Container do
	config.sort_order = 'updated_at_desc'
	permit_params :name, :order, :portal_id, :css_class

	index do
		selectable_column
		# id_column
		column 'Name', :name, sortable: :name do |dModel|
			link_to dModel.name, [:admin, dModel]
		end
		column 'Portal Page', :portal
		column 'Order', :order
		column 'Order', :css_class
		column 'Last Updated', :updated_at, :sortable => :updated_at do |dModel|
			dModel.updated_at.strftime('%d-%b %Y')
		end
		actions
	end

end
#  name       :string
#  order      :integer
#  portal_id  :integer
#  css_class  :string