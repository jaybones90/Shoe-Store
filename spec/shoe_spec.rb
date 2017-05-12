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
  it("converts the price into currency") do
    test_shoe = Shoe.create({:price => 45.34})
    expect(test_shoe.price).to(eq("$45.34"))
  end

end
