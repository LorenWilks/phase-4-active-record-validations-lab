class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: ["fiction", "non-fiction"]}
    validate :clickbait

def clickbait
if title.include?("Won't Believe")
errors.add(:title, "must be clickbait")    
end
if title.include?("Secret")
    errors.add(:title, "must be clickbait")    
    end
if title.include?("Top")
    errors.add(:title, "must be clickbait")    
    end
if title.include?("Guess")
    errors.add(:title, "must be clickbait")    
    end
end
end
