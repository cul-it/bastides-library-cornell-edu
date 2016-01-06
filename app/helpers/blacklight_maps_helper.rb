  module BlacklightMapsHelper
  include Blacklight::BlacklightHelperBehavior
  

  def link_to_point_search point_coordinates
    new_params = params.except(:controller, :action, :view, :id, :spatial_search_type, :coordinates)
    new_params[:spatial_search_type] = "point"
    new_params[:coordinates] = "#{point_coordinates[1]},#{point_coordinates[0]}"
    new_params[:view] = 'gallery'
    link_to(t('blacklight.maps.interactions.point_search'), catalog_index_path(new_params))
  end

end