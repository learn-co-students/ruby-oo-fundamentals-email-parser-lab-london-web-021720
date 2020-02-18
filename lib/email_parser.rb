# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    #Let's parse some emails
    def initialize(addresses)
        @addresses = addresses
    end


    def parse

        @parse = @addresses.split(/[, ]/)

        counter = 0
        while counter < @parse.size do
            b = @parse.count(@parse[counter])
            if b > 1
                @parse.delete_at(counter)
            end
            if @parse[counter] == ""
                @parse.delete_at(counter)
            end
            counter += 1
        end



        # while counter < @parse.size do
        #     @parse = @parse[counter].split(" ")
        #     counter += 1
        # end
        @parse
    end
end


