class Question < ActiveRecord::Base
  has_many :answers, inverse_of: :question

  validates_presence_of :title
end
