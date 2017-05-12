require 'spec_helper'

describe(Shoe) do
  describe('#stores') do
    it {should have_and_belong_to_many(:stores)}
  end
  it('validates the presence of a name') do
    test_shoe = Shoe.new({:brand => ""})
    expect(test_shoe.save).to(eq(false))
  end


end
