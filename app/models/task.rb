class Task < ApplicationRecord
  belongs_to :user
  enum status: { "pending" => 0,
                 "processing" => 1,
                 "completed" => 2
                }
  enum priority: { "piece_of_cake" => 0,
                   "normal" => 1,
                   "kind_of_hurry" => 2,
                   "immediately" => 3
                  }

  validates_presence_of :title
  validates_format_of :url, :with => /(^$)|(^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$)/ix, :allow_nil => true
end
