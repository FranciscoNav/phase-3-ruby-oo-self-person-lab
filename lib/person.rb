# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account
    attr_accessor :happiness
    attr_accessor :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happy?
        if @happiness > 7
            true
        else 
            false
        end
    end

    def clean?
        if @hygiene > 7
            true
        else 
            false
        end
    end

    def get_paid(salary)
        @bank_account= @bank_account + salary
        "all about the benjamins"
    end

    def take_bath
        @hygiene= @hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @hygiene= @hygiene -3
        @happiness= @happiness + 2
        "♪ another one bites the dust ♫"
    end

    def call_friend (friend)
        friend.happiness = friend.happiness + 3
        @happiness= @happiness + 3

        "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(person,topic)
        if topic == 'politics'
            @happiness= @happiness -2
            person.happiness = person.happiness -2
            "blah blah partisan blah lobbyist"
        elsif topic == 'weather'
            @happiness= @happiness +1
            person.happiness = person.happiness +1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end



end
