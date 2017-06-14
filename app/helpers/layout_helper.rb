module LayoutHelper

  def stylesheet(*args)
    content_for(:head) { stylesheet_link_tag(*args) }
  end

  def javascript(*args)
    content_for(:head) { javascript_include_tag(*args) }
  end

  def title(page_title, show_header = true)
    content_for(:title) { page_title.to_s }
    @show_header = show_header
  end

  def show_header?
    @show_header
  end

end
