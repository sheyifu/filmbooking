class Movie < ActiveRecord::Base
    searchkick
	has_many :reviews
	belongs_to :user
	
	belongs_to :order

	has_attached_file :image, styles: { medium: "400x600#" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	

	
  
end