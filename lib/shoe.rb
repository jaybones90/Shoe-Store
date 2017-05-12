class Shoe < ActiveRecord::Base
  has_and_belongs_to_many(:stores)
  validates(:brand, :presence => true, :length => {:maximum => 100}, :uniqueness => true)
  before_save(:downcase, :titleize)




  private


  def downcase
    self.brand = brand.downcase
  end

  def titleize
    self.brand = brand.titleize
  end

end
