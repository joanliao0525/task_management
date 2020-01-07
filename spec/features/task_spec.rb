require 'rails_helper'

RSpec.feature "Task", type: :feature do
  # pending "add some scenarios (or delete) #{__FILE__}"
  context "基本功能" do

    let(:user) { FactoryBot.create :user }
    let(:task) { Task.new(user: user) }

    scenario "新增任務" do
      visit root_path
      click_on "Create task"
      fill_in "Title", with: "sleep"
      click_button "Save"
    end
  end
end
