class Product < ApplicationRecord
    

    has_one_attached :image
    validates :name, presence: true, length: { minimum: 10 }
    validates :slug, presence: true
    validates :quantity , presence:true
    validates :content, presence: true, length: { minimum: 10 }
    validates :status, presence: true
    validates :display, presence: true
    validates :price, presence:true
end
