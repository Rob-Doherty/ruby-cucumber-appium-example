require_relative 'base_page'

class DemoPage < BasePage

  OPTIONS = {
      animation_option: { accessibility_id: 'Animation' },
      content_option:   { accessibility_id: 'Content' },
      text_option:      { accessibility_id: 'Text' },
      assets_option:    { accessibility_id: 'Assets' },
      clipboard_option: { accessibility_id: 'Clipboard' },
      resources_option: { accessibility_id: 'Resources' },
      packages_option:  { accessibility_id: 'Packages' }
  }

  HOME = OPTIONS.slice(:animation_option, :content_option, :text_option)
  CONTENT = OPTIONS.slice(:assets_option, :clipboard_option, :resources_option, :packages_option)

  def verify_demo_displayed
    HOME.each do |_, item|
      _find(item)
    end
  end

  def select(option)
    full_option = "#{option}_option".downcase.to_sym
    element = _find(OPTIONS[full_option])
    element.click
  end

  def verify_page_loaded(page)
    page_options = self.class.const_get(page.upcase.to_sym)
    raise "ERROR: page not understood." unless page_options
    page_options.each do |_, item|
      _find(item)
    end
    true
  end
end
