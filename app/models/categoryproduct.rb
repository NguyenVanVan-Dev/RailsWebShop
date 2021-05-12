class Categoryproduct < ApplicationRecord
   
    validates :slug, presence: true
    validates :name, presence: true, length: { minimum: 10 }
    validates :desc, presence: true, length: { minimum: 10 }
    validates :status, presence: true
    validates :parent, presence: true

end
