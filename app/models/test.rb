class Test < ActiveRecord::Base
  attr_accessor :id, :name
  self.primary_key = `id`
end
