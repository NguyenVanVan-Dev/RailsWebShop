class Slide < ApplicationRecord
    has_one_attached :image
    validates :name, presence: { message: 'You must enter this field' }, length: { minimum: 5 ,message: 'A minimum of 10 characters is required for this field'}
    validates :title, presence:  { message: 'You must enter this field' }
  
end
