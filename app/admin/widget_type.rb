ActiveAdmin.register WidgetType do
  config.sort_order = 'updated_at_desc'
	permit_params :name, :body, :partial_link, :_wysihtml5_mode, :fields_attributes => [:_destroy, :id, :field_type, :name, :field_val, :required, :widget_type_id]

  preserve_default_filters!
  remove_filter :created_at, :updated_at

  menu parent: 'Portals'

  form do |f|
    f.inputs 'Widgets' do
      f.input :name, :input_html => {:class => 'form-control' }
      f.input :body, :label => 'Body Template', :input_html => {:class => 'form-control' }, :as => :html_editor
      f.input :partial_link, :input_html => {:class => 'form-control' }
#    end
#    f.inputs 'Fields', :id => 'dynmic-pnl' do
      f.has_many :fields, :heading => false, :allow_destroy => true, :new_record => 'Add Field' do |a|
        a.input :field_type, :as => :select, :collection => %w[text_field check_box select]
        a.input :name, :placeholder => 'field_name', :input_html => {:class => 'form-control' }
        a.input :field_val, :label => 'Initial Data', :input_html => {:class => 'form-control' }
        a.input :required
      end
    end
    f.actions
  end

end
