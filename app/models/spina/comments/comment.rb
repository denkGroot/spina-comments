module Spina::Comments
  class Comment < ApplicationRecord
    belongs_to :commentable, polymorphic: true
    belongs_to :commenter, polymorphic: true

    scope :oldest_first, -> { order(:created_at) }
    scope :newest_first, -> { order(created_at: :desc) }
    scope :approved, -> { where(approved: true) }
    scope :unapproved, -> { where(approved: false) }

    validates :body, presence: true

    def full_name
      commenter.name
    end

    def author
      commenter.first_name
    end

    def email
      commenter.email
    end

    def gravatar_url
      email_hash = Digest::MD5.hexdigest(email)
      "https://www.gravatar.com/avatar/#{email_hash}?d=mp"
    end

  end
end