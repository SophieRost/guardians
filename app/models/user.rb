class User < ApplicationRecord
  mount_uploader :avatar, PhotoUploader
  # has_many :guard, as: 'owned_guards'
  has_many :bookings, dependent: :destroy
  has_many :guards, through: :bookings # , as: 'rented_guards'
  belongs_to :guard, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
