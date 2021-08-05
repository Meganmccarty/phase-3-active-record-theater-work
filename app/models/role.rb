class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        actors = self.auditions.map do |audition|
            audition.actor
        end
    end

    def locations
        self.auditions.map {|audition| audition.location}
    end

    def lead
        lead = self.auditions.where(hired: true).first
        self.hired(lead)
    end

    def understudy
        understudy = self.auditions.where(hired: true).second
        self.hired(understudy)
    end

    def hired(actor)
        if actor
            actor
        else
            "no actor has been hired for this role"
        end
    end
end