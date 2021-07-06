# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"

class EmailAddressParser

    attr_accessor :email_addresses
    
    def initialize(email_addresses)
        @email_addresses=email_addresses
    end

    def parse
        split_array = self.email_addresses.split(" ")
        split_array_2 = split_array.map {|address| address.gsub(",", '')}
        array = split_array_2.uniq 
    end

end