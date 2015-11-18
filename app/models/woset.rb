class Woset < ActiveRecord::Base
  belongs_to :exercise
  has_many :reps
end
