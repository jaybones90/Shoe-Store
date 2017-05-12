class Shoe < ActiveRecord::Base
  has_and_belongs_to_many(:stores)
  validates(:brand, :presence => true, :length => {:maximum => 100}, :uniqueness => true)
  before_save(:capitalize_first_letter)
  after_save(:add_zero_to_price)


  private

  def capitalize_first_letter
    self.brand = brand.capitalize!
  end

  def add_zero_to_price
    if price.to_s.length == 4 && price.to_s.include?(".")
      self.price = price.to_s.concat("0")
    end
  end


end
