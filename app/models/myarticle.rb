#models.rb
class Article < ActiveRecord::Base
    # Some logic could be here, but this is a simple example
    belongs_to :user
  end