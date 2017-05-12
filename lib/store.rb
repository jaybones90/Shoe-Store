class Store < ActiveRecord::Base
  has_and_belongs_to_many(:shoes)
  validates(:name, :presence => true, :length => {:maximum => 100})
  before_save(:capitalize_first_letter)




  private

  def capitalize_first_letter
    self.name = name.capitalize!
  end

end
