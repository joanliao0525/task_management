class Task < ApplicationRecord
  belongs_to :user
  enum status: { "pendding" => 0,
                 "processing" => 1,
                 "completed" => 2
                }
  enum priority: { "piece_of_cake" => 0,
                   "normal" => 1,
                   "kind_of_hurry" => 2,
                   "immediately" => 3
                  }

  validates_presence_of :title

end
