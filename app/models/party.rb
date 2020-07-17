class Party < ApplicationRecord
    validate :future_party

    def future_party
        if self.date < Date.today
            self.errors.add(:date, "Can't add past dates!")
        end
    end

    def self.search(query)
        self.where("name like ? OR date like ?", "%#{query}%", "%#{query}%")
    end

end
