require 'rails_helper'

RSpec.describe Task, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  context "可以成功建立一個任務" do

    task = Task.create(title: 'title', user_id: 1)

    it "任務一定要有 User" do
      expect(task.user_id).to eq 1
    end

    it "沒有輸入標題就無法儲存" do
      task = Task.create(title: '', user_id: 1)
      
      expect(task.save).to be false
    end

  end
  
end
