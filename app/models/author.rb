class Author < ApplicationRecord
has_many :quotes 
has_many :author_tags 
has_many :tags, through: :author_tags

    def self.random_except(author)
        (self.all - [author]).sample
    end
end
