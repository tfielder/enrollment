class Student < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :addresses
end