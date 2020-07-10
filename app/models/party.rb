class Party < ApplicationRecord

    def private?
        self.private ? 'Private' : 'Public'
    end    

end
