# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# Include your application configuration below
ActiveRecord::Base.pluralize_table_names = false