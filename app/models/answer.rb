class Answer < ActiveRecord::Base
  belongs_to :question

  validates_presence_of :question
  validates_presence_of :latitude, :longitude, if: -> { latitude? or longitude? }
  validates_presence_of :content, unless: :latitude?
end
