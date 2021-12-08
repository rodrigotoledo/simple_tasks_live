# frozen_string_literal: true

class Category < ApplicationRecord
  validates :title, presence: true, uniqueness: true
end
