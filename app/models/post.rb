class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 250 } 
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: {in: %w(Fiction Non-fiction)}
    include ActiveModel::Validations
    validates_with TitleValidator

    # def clickbait 
    #     if !(/Won't Believe/ === title || /Secret/ === title || /Guess/ === title || /Top/ === title)
    #         errors.add(:title, "is not clickbate-y")
    #     end
    # end 
end
