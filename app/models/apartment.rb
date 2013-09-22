class Apartment < ActiveRecord::Base
	attr_accessible :description, :image, :image2, :image3, :image4, :image5, :image6, :image7, :image8, :image9, :image10, :streetAddress, :aptNumber, :rent, :isAvailable, :description, :sqFootage, :beds, :baths, :parking, :stove, :washer, :dryer, :refrigerator, :microwave, :dishwasher, :laundryOnSite, :hardwoodFloors, :pets, :gasHeater, :balcony, :aircConditioning, :fireplace, :patio, :util_gas, :util_water, :util_electric, :util_maid, :util_trash, :util_gardener, :util_cable, :util_internet

	validates :streetAddress, presence: true, length: { minimum: 5 }
	validates :aptNumber, presence: true
	validates :rent, presence: true
	validates :beds, presence: true
	validates :baths, presence: true
	validates :user_id, presence: true

	has_attached_file :image, styles: { medium: "320x240>"}
	has_attached_file :image2, styles: { medium: "320x240>"}
	has_attached_file :image3, styles: { medium: "320x240>"}
	has_attached_file :image4, styles: { medium: "320x240>"}
	has_attached_file :image5, styles: { medium: "320x240>"}
	has_attached_file :image6, styles: { medium: "320x240>"}
	has_attached_file :image7, styles: { medium: "320x240>"}
	has_attached_file :image8, styles: { medium: "320x240>"}
	has_attached_file :image9, styles: { medium: "320x240>"}
	has_attached_file :image10, styles: { medium: "320x240>"}
	
	validates_attachment :image, presence: true, 
                            content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
                            size: { less_than: 4.megabytes }

    validates_attachment :image2, 
                            content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
                            size: { less_than: 4.megabytes }     
    validates_attachment :image3, 
                            content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
                            size: { less_than: 4.megabytes }  

    validates_attachment :image4, 
                            content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
                            size: { less_than: 4.megabytes }  

    validates_attachment :image5, 
                            content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
                            size: { less_than: 4.megabytes }  

    validates_attachment :image6, 
                            content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
                            size: { less_than: 4.megabytes }  

    validates_attachment :image7, 
                            content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
                            size: { less_than: 4.megabytes }  

    validates_attachment :image8, 
                            content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
                            size: { less_than: 4.megabytes }  

    validates_attachment :image9, 
                            content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
                            size: { less_than: 4.megabytes }  

    validates_attachment :image10, 
                            content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
                            size: { less_than: 4.megabytes }  
                                                                                                                                                                      	
	belongs_to :user

	def image_remote_url=(url_value)
		self.image = URI.parse(url_value) unless url_value.blank?
		super
	end
end
