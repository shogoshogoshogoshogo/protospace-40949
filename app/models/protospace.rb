class Protospace < ApplicationRecord

  belong_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :image
  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validates :image, presence: true
end
