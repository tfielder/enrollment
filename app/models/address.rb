class Address < ApplicationController
  validates :description, :street, :city, :state, :zip, presence: true
  belongs_to :student
end