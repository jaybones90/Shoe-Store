require 'spec_helper'

describe(Shoe) do
  describe('#stores') do
    it {should have_and_belong_to_many(:stores)}
  end
  it('validates the presence of a brand') do
    test_shoe = Shoe.new({:brand => ""})
    expect(test_shoe.save).to(eq(false))
  end
  it('validates the presence of a price') do
    test_shoe = Shoe.new({:price => ""})
    expect(test_shoe.save).to(eq(false))
  end
  it("makes the first letter of the brand capitalized") do
    test_shoe = Shoe.create({:brand => "nike"})
    expect(test_shoe.brand).to(eq("Nike"))
  end
  it("has a maximum character length of 100") do
    test_shoe = Shoe.new({:brand => "aaaaaaalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalala"})
    expect(test_shoe.save).to(eq(false))
  end
  it("prevents duplicate entries") do
    test_shoe1 = Shoe.create({:brand => "Nike"})
    test_shoe2 = Shoe.new({:brand => "Nike"})
    expect(test_shoe2.save).to(eq(false))
  end

end
