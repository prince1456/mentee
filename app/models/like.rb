class Like < ApplicationRecord
  belongs_to :mentor
  belongs_to :mentee

  validates :user_id, uniqueness: { scope: :question_id,
                                    message: "Liked already" }
                                    
end
