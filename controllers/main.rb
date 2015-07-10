get "/home" do
  erb :"/homepage"
end

get "/add" do
    erb :"/add_form"
end

# might be able to have the other form save here

get "/add_save" do
  #send shit to the db
  @new_entry = Products.add({"general_info" => params["general_info"], "technical_specs" => params["technical_specs"],
     "where_to_buy" => params["where_to_buy"]})
  "success"
end
  
get "/delete" do
   erb :"/delete_form"
end

get "/delete_save" do
  Products.delete(params["id"].to_i)
  @delete = true
    erb :"/view"
end
  
get "/edit" do
    erb :"/edit_form"
end

get "/edit_save" do
  @entry = Products.find(params["id"].to_i)
  @entry.general_info = params["general_info"]
  @entry.technical_specs = params["technical_specs"]
  @entry.where_to_buy = params["where_to_buy"]
  @entry.save(params["id"].to_i)
  #send shit to the db
  "success"
end

get "/view" do
    erb :"/view_list"
end

get "/view_individual/:x" do
  @view = Products.find(params["x"].to_i)
  erb :"/view_individual"
end




