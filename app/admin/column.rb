ActiveAdmin.register Column do
  belongs_to :row
  navigation_menu :row

  includes :widget_type
  
  config.sort_order = 'updated_at_desc'
	permit_params :name, :row_id, :position, :css_class, :size_xs, :size_sm, :size_md, :size_lg

  index do
		selectable_column
		# id_column
		column 'Name', :name, sortable: :name do |dModel|
			link_to dModel.name, [:admin, dModel.row, dModel]
		end
		column 'Parent Row', :row
		column 'Position', :position
		column 'Column Class', :css_class
    column 'Size - XS', :size_xs
    column 'Size - SM', :size_sm
    column 'Size - MD', :size_md
    column 'Size - LG', :size_lg
		column 'Last Updated', :updated_at, :sortable => :updated_at do |dModel|
			dModel.updated_at.strftime('%d-%b %Y')
		end
		actions
	end

  form do |f|

    f.semantic_errors
    f.inputs 'Columns' do
      f.input :row, :input_html => {:class => 'form-control' }, :as => :hidden
      f.input :name, :input_html => {:class => 'form-control' }
      f.input :position, :input_html => {:class => 'form-control' }
      f.input :css_class, :input_html => {:class => 'form-control' }
      f.input :size_xs, :input_html => {:class => 'form-control' }
      f.input :size_sm, :input_html => {:class => 'form-control' }
      f.input :size_md, :input_html => {:class => 'form-control' }
      f.input :size_lg, :input_html => {:class => 'form-control' }
    end

    f.inputs 'Widgets' do
      f.object.widget_types.each do |wt|
        li wt.to_json
      end
    end
    f.actions

  end

end
