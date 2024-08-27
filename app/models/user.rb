class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
validates :name, presence: true
validates :profile, presence: true
validates :occupation, presence: true
validates :position, presence: true

has_many :prototypes, dependent: :destroy
has_many :comments, dependent: :destroy
has_many :prototypes, class_name: 'Prototype', foreign_key: 'user_id'
end
