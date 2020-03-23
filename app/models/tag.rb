class Tag < ApplicationRecord
has_many :author_tags
has_many :authors, through: :author_tags
end
