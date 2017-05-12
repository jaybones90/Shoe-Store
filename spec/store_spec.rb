require 'spec_helper'

describe(Store) do
  describe('#shoes') do
    it {should have_and_belong_to_many(:shoes)}
  end
end
