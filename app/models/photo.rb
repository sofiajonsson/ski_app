class Photo < ApplicationRecord
  # validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
	  has_attached_file :image
		#Validates file, file type and file size
validates_attachment :image, presence: true,
content_type: { content_type: "image/jpeg" },
size: { in: 0..500.kilobytes }
end
