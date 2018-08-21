class Practice < ApplicationRecord

	has_attached_file :picone, styles: {large: "1500x500>", medium: "500x400>", thumb: "200x150#"}
	validates_attachment_content_type :picone, content_type: /\Aimage\/.*\z/

def self.search(params)
	practices = Practice.where("title LIKE ? or subtitle LIKE ? or boxtitle LIKE ? or boxinfo LIKE ?", 
				"%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%",) if params[:search].present?
	practices
end



end
