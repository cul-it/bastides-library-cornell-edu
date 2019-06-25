module BlacklightMapsHelper
  include Blacklight::BlacklightMapsHelperBehavior
  

  # return the placename value to be used as a link
  def map_thumbnail_value(geojson_hash)
    geojson_hash[:properties][blacklight_config.view.maps.map_thumbnail_property.to_sym]
  end

  def map_id_value(geojson_hash)
    geojson_hash[:properties][blacklight_config.view.maps.map_id_property.to_sym]
  end


end