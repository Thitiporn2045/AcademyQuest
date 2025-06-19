require 'rails_helper'

RSpec.describe "tasks/index", type: :view do
  before(:each) do
    assign(:tasks, [
      Task.create!(
        title: "Title",
      ),
      Task.create!(
        title: "Title",
      )
    ])
  end
end
