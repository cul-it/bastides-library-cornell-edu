module BlacklightHelper
  include Blacklight::BlacklightHelperBehavior


def link_help options={}
    options[:document] # the original document
    options[:field] # the field to render
    options[:value] # the value of the field
    link_to content_tag(:span, 'Street View'), options[:value]
end

def has_location_selected?
  location_param = params[:f][:location_facet_tesim]
  if location_param.present?
  @location_selected = location_param[0]
  render "location_selected"
  end
end

end
