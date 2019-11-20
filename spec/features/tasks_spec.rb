require 'rails_helper'

RSpec.feature "Tasks", type: :feature do
  # pending "add some scenarios (or delete) #{__FILE__}"
  user = User.create(email: 'joanliao@outlook.com', password: '000000')

  context "建立任務" do

    it "可以建立任務" do
      task = Task.new
      
      expect(task).to be_a Task
    end

    it "新增任務時 status 預設值為 pending， priority 預設值為 piece_of_cake" do
      task = Task.new
      
      expect(task.status).to eq 'pending'
      expect(task.priority).to eq 'piece_of_cake'
    end

    it "沒有輸入標題就無法儲存" do
      task0 = Task.new(title: '', user_id: 1)
      task1 = Task.new(title: 'task', user_id: 1)

      expect(task0.save).to be false
      expect(task1.save).to be true
    end

    it "URL 若不是符合網址格式或空白不能儲存" do
      task0 = Task.new(title: 'task', user_id: 1, url: 'https://joanliao.space')
      task1 = Task.new(title: 'task', user_id: 1, url: 'http://blabla')
      
      expect(task0.save).to be true
      expect(task1.save).to be false
    end
  end
end
