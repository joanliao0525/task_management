class Task < ApplicationRecord
  belongs_to :user
  enum status: { "Pendding" => 0,
                 "Processing" => 1,
                 "Completed" => 2
                }
  enum priority: { "Piece_of_cake" => 0,
                   "Normal" => 1,
                   "Kind_of_hurry" => 2,
                   "Immediately" => 3
                  }

end
