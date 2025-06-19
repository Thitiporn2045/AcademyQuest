require 'rails_helper'

RSpec.describe Task, type: :model do
  describe "validations" do
    it "is valid with valid attributes" do
      task = build(:task)
      expect(task).to be_valid
    end

    it "is invalid without a title" do
      task = build(:task, :without_title)
      expect(task).not_to be_valid
      expect(task.errors[:title]).to include("can't be blank")
    end

    it "allows completed to be true or false" do
      task_true = build(:task, completed: true)
      task_false = build(:task, completed: false)
      expect(task_true).to be_valid
      expect(task_false).to be_valid
    end
    it "is valid when completed is not set (nil) if allowed" do
      task = Task.new(title: "Untested Task")
      expect(task.completed).to be_nil
      expect(task).to be_valid
    end
  end
end
