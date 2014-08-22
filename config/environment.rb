# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# Add new inflection rules using the following format
ActiveSupport::Inflector.inflections do |inflect|
  inflect.irregular 'species', 'species'
end
