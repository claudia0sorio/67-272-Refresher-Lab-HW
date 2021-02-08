class Chore < ApplicationRecord
    belongs_to :child
    belongs_to :task

    scope :chronological, -> { order('due_on DESC') }
    scope :by_task, -> { joins(:task).order('name DESC') }
    scope :done, -> { where(completed:true) }



end
