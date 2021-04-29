# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :name
    validates :post
    validates :email, uniqueness: true, length: { minimum: 6 }

    # template = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
    # validates :password, format: { with: template }
  end

  has_many :messages
  has_many :room_users
  has_many :rooms, through: :room_users
end
