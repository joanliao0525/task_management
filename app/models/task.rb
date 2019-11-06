class Task < ApplicationRecord
  belongs_to :user
  # enum status: { "pending": 0, "processing": 1, "completed": 2 }
end
