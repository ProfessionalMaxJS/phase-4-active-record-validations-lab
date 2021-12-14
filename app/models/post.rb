class Post < ApplicationRecord

    validate :is_clickbait
    validates :title, presence: true 
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: ['Fiction',' Non-Fiction']}
    
    def is_clickbait(title)
        byebug
    unless /[Won't Believe Secret Guess Top \d]/.match?(title)
        errors.add(:title, "must be clickbait") 
    end
end

end
