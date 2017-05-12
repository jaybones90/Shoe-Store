class CreateShoesStoresJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table(:shoes, :stores)
  end
end
