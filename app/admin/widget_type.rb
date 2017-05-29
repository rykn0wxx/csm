ActiveAdmin.register WidgetType do
  config.sort_order = 'updated_at_desc'
	permit_params :name, :body, :partial_link, :fields_attributes


  form do |f|
    f.inputs 'Widgets' do
      f.input :name, :input_html => {:class => 'form-control' }
      f.input :body, :label => 'Body Template', :input_html => {:class => 'form-control' }, :as => :html_editor
      f.input :partial_link, :input_html => {:class => 'form-control' }
    end
    f.inputs 'Fields', :id => 'dynmic-pnl' do
      f.has_many :fields, :heading => false, :allow_destroy => true, :new_record => 'Add Field' do |a|
        a.input :field_type, :as => :select, :collection => %w[text_field check_box select]
        a.input :name, :placeholder => 'field_name', :input_html => {:class => 'form-control' }
        a.input :init_data, :label => 'Initial Data', :input_html => {:class => 'form-control admin-ace' }
        a.input :required
      end
    end
    f.actions
  end

end
