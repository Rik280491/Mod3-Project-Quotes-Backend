class AuthorTag < ApplicationRecord
  belongs_to :author
  belongs_to :tag
end
