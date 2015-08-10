class Article < ActiveRecord::Base
    include AASM
    
  	belongs_to :user
  	has_many :comments
    has_many :has_categories
    has_many :categories, through: :has_categories
    after_create :save_categories
    
	  has_attached_file :cover, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/

    #scopes!!! agrupaciones de datos o condiciones
    scope :publicados, ->{ where(state: "published")}
    scope :ultimos, ->{order("created_at DESC").limit(10)}
    
  	#status machine
  	aasm column: "state" do
  	    state :in_draft, initial: true
  	    state :published
  	    
  	    event :publish do
  	        transitions from: :in_draft, to: :published
  	    end
  	    
  	    event :unpublish do
  	        transitions from: :published, to: :in_draft
  	    end
  	    
  	end
  	
  	
  	#Custom setter, "para poder enviar un parametro desde el controlador de articulos (tabla intermedia)"
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
