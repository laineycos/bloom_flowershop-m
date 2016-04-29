class Product < ActiveRecord::Base
    validates :title, :description, :presence => true
    validates :title, :uniqueness => true
    validates :price, :numericality => {:greater_than_or_equal_to => 0.01}

    has_attached_file :productImage, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :productImage, content_type: /\Aimage\/.*\Z/
end
