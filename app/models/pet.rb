class Pet < ApplicationRecord

belongs_to :owner

# validates :name, uniqueness: true

end
