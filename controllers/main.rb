get "/home" do
  erb :"/homepage"
end

get "/add" do
    erb :"/add_form"
end

# might be able to have the other form save here

get "/add_save" do
  #send shit to the db
  "success"
end
  
get "/delete" do
   erb :"/delete_form"
end

get "/delete_save" do
  Product.delete(params["product_id"])
  @delete = true
    erb :"/view"
end
  
get "/edit" do
    erb :"/edit_form"
end

get "/edit_save" do
  Product.save
  #send shit to the db
  "success"
end

get "/view" do
    erb :"/view"
end




