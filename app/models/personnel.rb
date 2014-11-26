class Personnel < ActiveRecord::Base
	default_scope {order(:nom)}


	has_attached_file :cover, 
      	:styles => { 
	    :medium => "300x300>", 
	    :thumb => "100x100>" }, 
	    :default_url => "/public/system/images.jpg"
  validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/


end
