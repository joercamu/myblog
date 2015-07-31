class Article < ActiveRecord::Base
	belongs_to :user
	has_many :comments
  has_many :has_categories
  has_many :categories, through: :has_categories

	has_attached_file :cover, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/

  	after_create :save_categories
  	#Custom setter
  	def categories=(value)
  		@categories = value
  	end
  	#
  	private

  	def save_categories
  		#raise @categories.to_yaml
  		@categories.each do |category_id|
  			HasCategory.create(category_id: category_id, article_id: self.id)
  		end
  	end

end
