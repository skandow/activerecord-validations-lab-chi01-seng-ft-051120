class TitleValidator < ActiveModel::Validator 

    def validate(record)
        unless /Won't Believe/ === record.title || /Secret/ === record.title || /Guess/ === record.title || /Top/ === record.title
            record.errors[:title] << "This title is not clickbait-y enough"
        end 
    end 
end 