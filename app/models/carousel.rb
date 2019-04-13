class Carousel < ApplicationRecord

  validates :slidetitle1, presence: true, length: {minimum: 5}
  validates :slidetitle2, presence: true, length: {minimum: 5}

	# paperclip
	# has_attached_file :banner, styles: {large: "1920x800>", medium: "960x400>", small: "480x200#"}
	# validates_attachment_content_type :banner, content_type: /\Aimage\/.*\z/

  belongs_to :user
end
