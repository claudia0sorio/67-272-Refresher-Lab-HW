class Task < ApplicationRecord

    scope :alphabetical, -> { order("name") }

end
