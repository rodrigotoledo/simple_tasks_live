# frozen_string_literal: true

class Task < ApplicationRecord
  belongs_to :category
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true

  after_create do
    broadcast_prepend_to 'tasks'
  end

  after_update do
    broadcast_update_to 'tasks'
  end
  after_destroy_commit do
    broadcast_remove_to 'tasks'
  end
end
