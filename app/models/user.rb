class User < ApplicationRecord
  has_many :matches
  has_many :matched_users, through: :matches, dependent: :destroy do
    def with_match_data
      select('users.*, matches.created_at AS match_created_at')
    end
  end
end
