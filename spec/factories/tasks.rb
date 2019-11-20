FactoryBot.define do

  factory :task, class: Task do
    
    user_id { 1 }
    title { "title#{task.id}" }

  end

end
