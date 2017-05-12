class Shoe < ActiveRecord::Base
  has_and_belongs_to_many(:stores)
  validates(:brand, :presence => true)
  before_save(:capitalize_first_letter)

  private

  def capitalize_first_letter
    self.brand = brand.capitalize!
  end


end
