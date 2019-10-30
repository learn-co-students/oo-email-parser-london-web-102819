# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser

    attr_accessor :email_addresses

    def initialize(emails)
        @email_addresses = emails
    end

    def parse
        
        emails = @email_addresses

        if emails =~ /, / 
            email_list = emails.split(", ")
        else
            email_list = emails.split(" ")
        end

        new_list = []

        email_list.each do |email|
            if email.include?(" ")
                new_list = new_list + email.split(" ")
            else
                new_list << email
            end
        end

        new_list.uniq

        
    end

end

