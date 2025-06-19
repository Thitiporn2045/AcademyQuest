require 'rails_helper'

RSpec.describe "tasks/edit", type: :view do
  let(:task) {
    Task.create!(
      title: "MyString",
    )
  }

  before(:each) do
    assign(:task, task)
  end

  it "renders the edit task form" do
    render

    assert_select "form[action=?][method=?]", task_path(task), "post" do
      assert_select "input[name=?]", "task[title]"
    end
  end
end
