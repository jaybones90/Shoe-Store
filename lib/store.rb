class Store < ActiveRecord::Base
  has_and_belongs_to_many(:shoes)
  validates(:name, :presence => true, :length => {:maximum => 100}, :uniqueness => true)
  before_save(:downcase, :titleize)




  private

  def downcase
    self.name = name.downcase
  end

  def titleize
    self.name = name.titleize
  end

end
