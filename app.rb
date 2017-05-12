require "bundler/setup"
Bundler.require :default
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get ("/") do
  erb :index
end

############################## STORES ##############################

get ("/stores") do
  @all_stores = Store.all
  erb(:stores)
end

get ("/store/add") do
  erb(:new_store_form)
end
#add a new store
post ("/store/add") do
  store_name = params['store_name']
  Store.create({:name => store_name})
  redirect("/stores")
end

get ("/store/:id") do
  @all_shoes = Shoe.all
  @store = Store.find(params['id'].to_i)
  erb(:store)
end
##edit current store
get ("/store/:id/edit") do
  @store = Store.find(params['id'].to_i)
  erb(:edit_store_form)
end

patch ("/store/:id/edit") do
  @store = Store.find(params['id'].to_i)
  name = params['store_name']
  @store.update({:name => name})
  redirect("/store/#{@store.id}")
end
##delete store
delete ("/store/:id/delete") do
  @store = Store.find(params['id'].to_i)
  @store.delete
  redirect("/")
end

post ("/store/:id/add_shoes") do
  store = Store.find(params['id'].to_i)
  shoe_ids = params['shoe_ids']
  shoe_ids.each do |id|
  store.shoes.push(Shoe.find(id))
  end
  redirect ("/store/#{store.id}")
end

############################# SHOES #####################

get ("/shoes") do
  @all_shoes = Shoe.all
  erb(:shoes)
end

get ("/shoe/add") do
  erb(:new_shoe_form)
end

post ("/shoe/add") do
  brand = params['shoe_brand']
  price = params['shoe_price']
  Shoe.create({:brand => brand, :price => price})
  redirect("/shoes")
end

get ("/shoe/:id") do
  @shoe = Shoe.find(params['id'].to_i)
  erb(:shoe)
end

get ("/shoe/:id/edit") do
  @shoe = Shoe.find(params['id'].to_i)
  erb(:edit_shoe_form)
end

patch ("/shoe/:id/edit") do
  @shoe = Shoe.find(params['id'].to_i)
  brand = params['shoe_brand']
  if brand == ""
    brand = @shoe.brand
  end
  price = params['shoe_price']
  if price == ""
    price = @shoe.price
  end
  @shoe.update({:brand => brand, :price => price})
  redirect ("/shoe/#{@shoe.id}")
end

delete ("/shoe/:id/delete") do
  @shoe = Shoe.find(params['id'].to_i)
  @shoe.delete
  redirect ("/shoes")
end
