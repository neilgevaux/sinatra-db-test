require 'spec_helper'
RSpec.describe "User can post a task" do
 it "when filling in all information" do
   visit "/"
   fill_in "task[title]", with: "Test"
   fill_in "task[content]", with: "This is my new task."
   click_on "Post"
   new_blog = Task.last
   expect(new_blog.title).to eq("Test")
   expect(new_blog.content).to eq("This is my new task")
   expect(current_path).to eq("/tasks/#{new_task.id}")
   expect(page).to have_content("This is my new task")
   expect(page).to have_content("Test")
 end
end