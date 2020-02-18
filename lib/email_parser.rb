# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailAddressParser 
    def initialize (emails1)
        @email_addresses = emails1  
    end 

    
#  attr_accessor :emails
 

    def parse 
        # @email_addresses.each {    

        # } 

    #   @parse = @email_addresses.split(/[, ]/)
        array = @email_addresses.split(" ")
        array1 = array.map {|email| 
            if email.include?(",")
                email.gsub(",", "")
            else 
                email
                
            end
    }

   

    

         


   array1 = array1.uniq

    end

end