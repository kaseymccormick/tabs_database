get "/home" do
  erb :"/homepage"
end

get "/add" do
    erb :"/add_form"
end

# might be able to have the other form save here

get "/add_save" do
  #send shit to the db
  @new_entry = Product.add({"general_info" => params["general_info"], "technical_specs" => params["technical_specs"],
     "where_to_buy" => params["where_to_buy"]})
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
  @entry = Product.find(params["x"].to_i)
    erb :"/edit_form"
end

get "/edit_save.:x" do
  @entry = Product.find(params["product_id"].to_i)
  @entry.general_info = params["general_info"] 
  @entry.technical_specs = params["technical_specs"]
  @entry.what_to_buy = params["what_to_buy"]   
  @entry.save
  #send shit to the db
  "success"
end

get "/view" do
    erb :"/view"
end




