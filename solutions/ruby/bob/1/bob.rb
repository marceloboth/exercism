=begin
Write your code for the 'Bob' exercise in this file. Make the tests in
`bob_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/bob` directory.
=end
class Bob
  def self.hey(remark)
    return "Calm down, I know what I'm doing!" if is_a_question?(remark) && yell_at_him?(remark)
    return 'Sure.' if is_a_question?(remark)
    return 'Whoa, chill out!' if yell_at_him?(remark)
    return 'Fine. Be that way!' if address_without_say?(remark)
    'Whatever.'
  end

  def self.is_a_question?(remark)
    remark.strip[-1] == '?'
  end

  def self.yell_at_him?(remark)
    letters_only = remark.gsub(/[^a-zA-Z]/, "")
    return false if letters_only.empty?
    
    letters_only == letters_only.upcase
  end

  def self.address_without_say?(remark)
    remark.strip.empty?
  end
end