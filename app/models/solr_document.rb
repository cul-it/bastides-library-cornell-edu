# -*- encoding : utf-8 -*-
class SolrDocument

  include Blacklight::Solr::Document
  include Blacklight::Gallery::OpenseadragonSolrDocument


  # self.unique_key = 'id'

  # Email uses the semantic field mappings below to generate the body of an email.
  SolrDocument.use_extension( Blacklight::Document::Email )

  # SMS uses the semantic field mappings below to generate the body of an SMS email.
  SolrDocument.use_extension( Blacklight::Document::Sms )

  # DublinCore uses the semantic field mappings below to assemble an OAI-compliant Dublin Core document
  # Semantic mappings of solr stored fields. Fields may be multi or
  # single valued. See Blacklight::Document::SemanticFields#field_semantics
  # and Blacklight::Document::SemanticFields#to_semantic_values
  # Recommendation: Use field names from Dublin Core
  use_extension( Blacklight::Document::DublinCore)

  #latitude,longitude
  #http://maps.google.com/maps?q=24.197611,120.780512+(Dan)
  #cbll= Latitude,longitude for Street View.
  #layer=c
  #https://www.google.com/maps/place/210+E+Marshall+St,+Ithaca,+NY+14850/@42.4461342,-76.4975749,3a,75y,354h,90t/data=!3m7!1e1!3m5!1sHWQHseedMzrr0LClHsuL1Q!2e0!6s%2F%2Fgeo3.ggpht.com%2Fcbk%3Fpanoid%3DHWQHseedMzrr0LClHsuL1Q%26output%3Dthumbnail%26cb_client%3Dsearch.TACTILE.gps%26thumb%3D2%26w%3D392%26h%3D106%26yaw%3D354.43024%26pitch%3D0!7i13312!8i6656!4m2!3m1!1s0x89d08183e4a2412b:0xc0e12e27c7f65ee9!6m1!1e1
  #https://www.google.com/maps/?cbll=44.693263,-0.086227&layer=c&rotation=83.2
  #https://www.google.com/maps/?cbll=43.616201,0.442486&layer=c&cbp=12,335,,0,5

  def street_view_link
  "https://www.google.com/maps/?cbll=#{first(:where_ssim)}&layer=c&cbp=12,#{first(:true_bearing_fsi)},,0,5"
end
end
