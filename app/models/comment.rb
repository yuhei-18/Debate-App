class Comment < ApplicationRecord
    belongs_to :debate, foreign_key: "debate_id"
end
