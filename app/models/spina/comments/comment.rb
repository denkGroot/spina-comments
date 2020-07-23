module Spina::Comments
  class Comment < ApplicationRecord
    belongs_to :commentable, polymorphic: true
    belongs_to :commenter, polymorphic: true

    scope :approved, -> { where(approved: true) }
  end
end