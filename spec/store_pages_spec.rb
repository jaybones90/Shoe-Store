require 'spec_helper'

describe("the index page path for store", {:type => :feature}) do
  it("lets the user visit the form to enter a new store") do
    visit("/stores")
    click_link("Add A New Store")
    expect(page).to have_content("Enter A Name For The Store")
  end
end
describe("the index page path for store", {:type => :feature}) do
  it("lets the user visit the form to enter a new store") do
    visit("/stores")
    click_link("Add A New Store")
    fill_in("Enter A Name For The Store", :with => "footlocker")
    click_button("Submit")
    expect(page).to have_content("Footlocker")
  end
end
describe("the index page path for store", {:type => :feature}) do
  it("lets the user visit the form to enter a new store") do
    visit("/stores")
    click_link("Add A New Store")
    fill_in("Enter A Name For The Store", :with => "apple")
    click_button("Submit")
    click_link("Apple")
    expect(page).to have_content("Apple")
  end
end
describe("the index page path for store", {:type => :feature}) do
  it("lets the user visit the form to enter a new store") do
    visit("/stores")
    click_link("Add A New Store")
    fill_in("Enter A Name For The Store", :with => "zebra")
    click_button("Submit")
    click_link("Zebra")
    click_link("Edit This Store")
    fill_in("Enter A New Name For This Store", :with => "monkey")
    click_button("Submit")
    expect(page).to have_content("Monkey")
  end
end
describe("the index page path for store", {:type => :feature}) do
  it("lets the user delete a store") do
    visit("/stores")
    click_link("Add A New Store")
    fill_in("Enter A Name For The Store", :with => "pineapple")
    click_button("Submit")
    click_link("Pineapple")
    click_button("Delete This Store")
    expect(page).to have_no_content("Pineapple")
  end
end
