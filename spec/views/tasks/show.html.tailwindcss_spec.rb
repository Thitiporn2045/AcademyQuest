require 'rails_helper'

RSpec.describe "tasks/show", type: :view do
  before(:each) do
    assign(:task, Task.create!(
      title: "Title",
      description: "MyText",
      completed: false
    ))
  end
end
