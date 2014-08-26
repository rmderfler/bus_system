class Bus < ActiveRecord::Base
  validates :number, presence: true
  validates :line_id, presence: true
  belongs_to :line
end