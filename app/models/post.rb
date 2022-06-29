class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
    validate :truefax

    def truefax
        if title == "True Facts"
            errors.add(:title, "Not allowed!")
        end
    end


end
