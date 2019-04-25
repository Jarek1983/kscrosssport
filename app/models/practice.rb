class Practice < ApplicationRecord

  validates :title, presence: true, length: {minimum: 3}
  validates :subtitle, presence: true, length: {minimum: 3}
  validates :boxinfo, presence: true, length: {minimum: 15}
  validates :boxtitle, presence: true, length: {minimum: 3}
  validates :image, presence: true
  validates :image_second, presence: true

  # validate :image_size_validation
 
  # def image_size_validation
  #   errors[:image] << "Za duży rozmiar zdjęcia" if image.size > 0.5.megabytes
  # end

  belongs_to :user

  	# Paperclip
	# has_attached_file :picone, styles: {large: "1500x500>", medium: "500x400>", thumb: "200x150#"}
	# validates_attachment_content_type :picone, content_type: /\Aimage\/.*\z/

	# Carriewave
  	mount_uploader :image, ImageUploader
    mount_uploader :image_second, ImageUploader
    mount_uploader :image_third, ImageUploader

	def self.search(params)
		practices = Practice.where("title LIKE ? or subtitle LIKE ? or boxtitle LIKE ? or boxinfo LIKE ?", 
				"%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%",) if params[:search].present?
	practices
	end



end
