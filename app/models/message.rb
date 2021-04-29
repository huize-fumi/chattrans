# frozen_string_literal: true

class Message < ApplicationRecord
  validates :content, presence: true, unless: :was_attached?
  def was_attached?
    image.attached?
  end

  belongs_to :user
  has_one_attached :image
  belongs_to :room
end
