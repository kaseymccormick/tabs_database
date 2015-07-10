
require_relative "../database_class_methods.rb"
require_relative "../database_instance_methods.rb"

class Products
  
  extend DatabaseClassMethods
  include DatabaseInstanceMethods
  
  attr_reader :id 
  attr_accessor :general_info, :technical_specs, :where_to_buy
  
  #initalize a new responder object
  def initialize(options={})
    @id = options["id"].to_i
    @general_info = options["general_info"]
    @technical_specs = options["technical_specs"]
    @where_to_buy = options["where_to_buy"]
  end
  
  # currently not using this method
  # update one row via id information
  #
  #save - intiger
  #
  #returns array
def save(id)
  CONNECTION.execute("UPDATE products SET general_info = '#{@general_info}', technical_specs = '#{@technical_specs}', where_to_buy = '#{@where_to_buy}' WHERE id = #{@id};")
end

end