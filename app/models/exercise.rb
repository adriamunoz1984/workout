class Exercise < ActiveRecord::Base
  belongs_to :training
  has_many :wosets
end
