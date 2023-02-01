class Post < ApplicationRecord
    validates :title, presence: true
    validates :category, inclusion: { in: %w (Non-Fiction Fiction) }
    validates :content, {length => {minimum: 100}}
    
end
