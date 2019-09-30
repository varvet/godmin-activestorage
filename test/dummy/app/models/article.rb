# frozen_string_literal: true

class Article < ApplicationRecord
  has_one_attached :image

  validates :title, presence: true
  validates :image, presence: true
end
