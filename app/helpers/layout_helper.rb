module LayoutHelper
  def title(page_title, show_title = true)
    content_for(:title) { page_title.to_s }
    @show_title = show_title
  end

  def vis_header
    ctrls = %w(sessions registratons)
    @show_header = ctrls.include?(controller_name)
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

  def jscript(*jsscript_file)
    if jsscript_file
      content_for(:jsscripts) { javascript_include_tag(*jsscript_file) }
    end
  end
end
