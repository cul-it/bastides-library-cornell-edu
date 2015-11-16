module BlacklightHelper
  include Blacklight::BlacklightHelperBehavior


def link_help options={}
    options[:document] # the original document
    options[:field] # the field to render
    options[:value] # the value of the field
    link_to content_tag(:span, 'Street View'), options[:value]

  end

end
