class News < ActiveRecord::Base

	belongs_to :user
	has_many :comments
	belongs_to :news

	has_attached_file :image, styles: { medium: "300x200#" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
