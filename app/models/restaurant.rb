class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true , uniqueness: { case_sensitive: false }
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: ["Chinese", "Italian", "Japanese", "French", "Belgian"] } , uniqueness: { case_sensitive: false }
end
