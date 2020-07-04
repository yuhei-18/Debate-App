class Debate < ApplicationRecord
  has_many :comments, dependent: :destroy

  validates :title, presence: true, length: { minimum: 3, message: "議題が短すぎます。" }
  validates :body, presence: true
end
