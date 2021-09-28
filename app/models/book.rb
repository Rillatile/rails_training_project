class Book < ActiveRecord::Base
  self.table_name = 'books'

  belongs_to :author
end
