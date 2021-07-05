# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    attr_accessor :email_address
    def initialize (email_addresses)
        @email_addresses = email_addresses
    end

    def parse 
        @all = [ ] 
        @email_addresses.split(/,?\s+/).each do 
            |email|@all<<email.strip
        end 
        @all.uniq 
    end 
end 