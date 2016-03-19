class Exercise < ActiveRecord::Base
  belongs_to :training
  has_many :wosets

  accepts_nested_attributes_for :wosets,
  								reject_if: proc {|attributes| attributes['weight','reps'].blank?},
  								allow_destroy: true
 validates :weight, :reps, presence: true
end
