require "rails_helper"

RSpec.feature "Quiz Master", :type => :feature do
  before :each do
    Question.destroy_all
    Question.create(question: 'Test Question', answer: '1')
  end

  scenario "User answer question with number" do
    visit "/"

    fill_in "answer", :with => "1"
    click_button "answer"

    expect(page).to have_text("CORRECT!")
  end

  scenario "User answer question with words" do
    visit "/"

    fill_in "answer", :with => "one"
    click_button "answer"

    expect(page).to have_text("CORRECT!")
  end

  scenario "User answer question with wrong answer" do
    visit "/"

    fill_in "answer", :with => "3"
    click_button "answer"
    expect(page).to have_text("WRONG!")
  end
end