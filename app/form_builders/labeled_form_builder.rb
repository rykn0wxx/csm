class LabeledFormBuilder < FormtasticBootstrap::FormBuilder

  delegate :label_tag, :content_tag, :tag, :link_to, to: :@template

  %w[text_field text_area password_field].each do |method_name|
    define_method(method_name) do |name, *args|
      content_tag :div, class: "form-group" do
        label(name, nil, class: "col-sm-2 control-label") +
        content_tag(:div, class: "col-sm-10") do
          super(name, *args)
        end
      end
    end
  end

  def collection_select(method, collection, value_method, text_method, opt, hopot)
    content_tag :div, class: "form-group" do
      label(method, nil, class: "col-sm-2 control-label") +
      content_tag(:div, class: "col-sm-10") do
        super(method, collection, value_method, text_method, opt, hopot)
      end
    end
  end

  def submit(name = "Save Record", *args)
    opts = args.extract_options!

    content_tag :div, :class => "form-group" do
      content_tag :div, :class => "col-sm-10 col-sm-offset-2" do
        action(:submit, :label => name, :as => :button, :button_html => { :class => "btn btn-info" })
      end
    end
  end

  def check_box(name, *args)
    content_tag :div, class: "checkbox" do
      label(name) do
        super + " " + label(name, nil)
      end
    end
  end

  def error_messages
    if object.errors.full_messages.any?
      content_tag(:div, :class => "error_messages") do
        content_tag(:h2, "Invalid Fields") +
        content_tag(:ul) do
          object.errors.full_messages.map do |msg|
            content_tag(:li, msg)
          end.join.html_safe
        end
      end
    end
  end

end
