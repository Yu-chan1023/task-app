class Task < ApplicationRecord
  belongs_to :category
  belongs_to :priority

  validates :start_time, presence: true
  validates :title, presence: true
  validates :content, presence: true
  validates :category_id, presence: true
  validates :priority_id, presence: true
end
