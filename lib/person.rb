# your code goes here
class Person
    attr_reader :name, :bank_account, :happiness, :hygiene
    attr_writer :bank_account
    def initialize(name)
        @name=name
        self.bank_account=25
        self.happiness=8
        self.hygiene=8
    end
    def happiness=(value)
        if(value<0)
            @happiness= 0
        elsif(value >10)
            @happiness= 10
        else
            @happiness= value
        end
    end
    def hygiene=(value)
        if(value<0)
            @hygiene= 0
        elsif(value >10)
            @hygiene= 10
        else
            @hygiene= value
        end
    end
    def clean?
        return self.hygiene > 7
    end
    def happy?
        return self.happiness > 7
    end
    def get_paid(salaryAmount)
        self.bank_account+=salaryAmount
        return "all about the benjamins"
    end
    def take_bath
        self.hygiene+=4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.happiness+=2
        self.hygiene-=3
        return "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        self.happiness+=3
        friend.happiness+=3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(friend, topic)
        if(topic=='politics')
            friend.happiness-=2
            self.happiness-=2
            return "blah blah partisan blah lobbyist"
        elsif(topic=='weather')
            friend.happiness +=1
            self.happiness+=1
            return "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end
