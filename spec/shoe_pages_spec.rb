require 'spec_helper'

describe("the index page path for shoe", {:type => :feature}) do
  it("lets the user visit the form to enter a new shoe") do
    visit("/shoes")
    click_link("Add A New Shoe")
    expect(page).to have_content("Enter A Brand For The Shoe")
  end
end
describe("the index page path for shoe", {:type => :feature}) do
  it("lets the user visit the form to enter a new shoe") do
    visit("/shoes")
    click_link("Add A New Shoe")
    fill_in("Enter A Brand For The Shoe", :with => "Kicks")
    fill_in("Price", :with => 45)
    click_button("Submit")
    expect(page).to have_content("Kicks")
  end
end
describe("the index page path for shoe", {:type => :feature}) do
  it("lets the user visit the page for the newly created shoe") do
    visit("/shoes")
    click_link("Add A New Shoe")
    fill_in("Enter A Brand For The Shoe", :with => "Kicks")
    fill_in("Price", :with => 45)
    click_button("Submit")
    click_link("Kicks")
    click_link("Edit This Shoe")
    fill_in("Edit The Brand For This Shoe", :with => "apple")
    click_button("Submit")
    expect(page).to have_content("Apple")
  end
end
describe("the index page path for shoe", {:type => :feature}) do
  it("lets the user visit the page for the newly created shoe") do
    visit("/shoes")
    click_link("Add A New Shoe")
    fill_in("Enter A Brand For The Shoe", :with => "Kicks")
    fill_in("Price", :with => 45)
    click_button("Submit")
    click_link("Kicks")
    click_link("Edit This Shoe")
    fill_in("Edit The Brand For This Shoe", :with => "purple")
    click_button("Submit")
    click_button("Delete This Shoe")
    expect(page).to have_no_content("Purple")
  end
end
