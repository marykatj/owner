class Owner < ApplicationRecord

  has_many :pets

  # validates :name, presence: true

end
