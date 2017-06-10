module LayoutHelper
  def title(page_title, show_header = true)
    content_for(:title) { page_title.to_s }
    @show_header = show_header
  end

  def show_header?
    @show_header
  end

  def stylesheet(*args)
    content_for(:head) { stylesheet_link_tag(*args) }
  end

  def javascript(*args)
    content_for(:head) { javascript_include_tag(*args) }
  end

  def pagebg(fle_img)
    if fle_img
      content_for(:pagebg) { content_tag(:div, nil, class:'segmenter', style: 'background-image:url(assets/' + fle_img + '.jpg)')}
    end
  end

end
