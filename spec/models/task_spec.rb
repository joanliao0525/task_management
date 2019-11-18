require 'rails_helper'

RSpec.describe Task, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  context "可以成功建立一個任務" do
    it "任務一定要有 User" do
      task = Task.new
      
      expect(task).to be_a Task
    end
    
    it "新增任務時 status 預設值為 pending， priority 預設值為 piece_of_cake" do
      task = Task.new
      
      expect(task.status).to eq 'pending'
      expect(task.priority).to eq 'piece_of_cake'
    end

    it "沒有輸入標題就無法儲存" do
      task = Task.new(title: '', user_id: 1)

      expect(task.save).to be false
    end

    it "URL 欄位必須是 nil 或正確的格式" do
      task = Task.new

      expect(task.url?).to be false
    end

  end
  
end