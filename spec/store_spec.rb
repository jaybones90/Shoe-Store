require 'spec_helper'

describe(Store) do
  describe('#shoes') do
    it {should have_and_belong_to_many(:shoes)}
  end
  it("will capitalize the first letter of the store name") do
  test_store = Store.create({:name => "footlocker"})
  expect(test_store.name).to(eq("Footlocker"))
  end
  it("confirms that the name is not an empty string") do
    test_store = Store.new({:name => ""})
    expect(test_store.save).to(eq(false))
  end
  it("limits the store name to 100 characters") do
    test_store = Store.new({:name => "jkldfsajkladfjlkcdjklacjewijajjkldfasalweaioaejcjekwhfhdfadfjkaewl;adsldsaflkjklasdflkjanscdnawioehfalksdjklasldkfjlaksdflanewcnjalshjf;lahwelfoaih"})
    expect(test_store.save).to(eq(false))
  end
end
