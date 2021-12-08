# frozen_string_literal: true

class Task < ApplicationRecord
  belongs_to :category, required: true
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
end
