require 'spec_helper'

describe(Store) do
  describe('#shoes') do
    it {should have_and_belong_to_many(:shoes)}
  end
  it("will capitalize the first letter of the store name") do
  test_store = Store.create({:name => "footlocker"})
  expect(test_store.name).to(eq("Footlocker"))
  end
end
