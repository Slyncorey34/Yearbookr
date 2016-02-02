class User < ActiveRecord::Base
	validates_confirmation_of :password
	has_attached_file :avatar, :styles => { :thumb => "200x200>" }, :default_url => "/images/:style/missing.png" 
  	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  
end
