require 'rails_helper'

RSpec.describe Task, type: :model do

  # pending "add some examples to (or delete) #{__FILE__}"
  
  describe "欄位內容驗證" do
    context "建立任務" do
      let(:user) { FactoryBot.create :user }
      let(:task) { Task.new(title: 'task', user: user) }
      
      it "可以建立任務" do
        expect(task).to be_a Task
      end

      it "新增任務時 status 預設值為 pending， priority 預設值為 piece_of_cake" do      
        expect(task.status).to eq 'pending'
        expect(task.priority).to eq 'piece_of_cake'
      end

      it "沒有輸入標題就無法儲存" do

        expect(task.save).to be true

        task.title = nil

        expect(task.save).to be false
      end

      it "URL 若不是符合網址格式或空白不能儲存" do
        task.url = 'https://joanliao.space'

        expect(task.save).to be true

        task.url = 'http://blah'

        expect(task.save).to be false
      end
    end
  end
end
