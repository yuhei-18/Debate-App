class Debate < ApplicationRecord
  validates :title, presence: true, length: { minimum: 3, message: "議題が短すぎます。" }
  validates :body, presence: true
end
