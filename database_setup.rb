# Load/create our database for this program.
CONNECTION = SQLite3::Database.new("products.db")

# Make the tables.
CONNECTION.execute("CREATE TABLE IF NOT EXISTS products (id INTEGER PRIMARY KEY, general_info TEXT, technical_specs TEXT, where_to_buy TEXT );")

# Get results as an Array of Hashes.
CONNECTION.results_as_hash = true