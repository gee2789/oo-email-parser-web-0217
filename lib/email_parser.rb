# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailParser
  attr_accessor(:email)

  def initialize(email_string)
    @email=email_string
  end

  def parse
    email.split.map do |email_string| #first .split addresses empty spaces
      email_string.split(",") #second .split address ","
    end.flatten.uniq #uniq gets rid of duplicates. flatten gets rid of nested arrays
  end
end
