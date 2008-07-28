require File.dirname(__FILE__) + '/../lib/rapleaf'

# Instanciate a Rapleaf object with your API Key.
@rapleaf = Rapleaf::Base.new('REPLACE_WITH_YOUR_API_KEY')

@person = @rapleaf.person(:email => 'dummy@rapleaf.com')

puts "\n\n"
puts "BASICS"

puts "\n@person.basics.name:"
puts @person.basics.name

puts "\n@person.basics.age:"
puts @person.basics.age

puts "\n@person.basics.gender:"
puts @person.basics.gender

puts "\n@person.basics.location:"
puts @person.basics.location

puts "\n@person.basics.occupations:"
if @person.basics.occupations
  @person.basics.occupations.each do |occupation|
    puts "occupation.job_title"
    puts occupation.job_title
    puts "occupation.company"
    puts occupation.company
  end
end

puts "\n@person.basics.universities:"
if @person.basics.universities
  @person.basics.universities.each do |university|
    puts "university:"
    puts university
  end
end

puts "\n@person.basics.earliest_known_activity:"
puts @person.basics.earliest_known_activity

puts "\n@person.basics.latest_known_activity:"
puts @person.basics.latest_known_activity

puts "\n@person.basics.num_friends:"
puts @person.basics.num_friends

puts "\nMEMBERSHIPS"

puts "\n@person.memberships.inspect"
puts @person.memberships.inspect

puts "\n@person.memberships.primary.inspect"
puts @person.memberships.primary.inspect

puts "\n@person.memberships.primary.membership[0].site"
puts @person.memberships.primary.membership[0].site

# Look up a profile by hashed email address.
puts "\nLookup by hashed email:"
@person = @rapleaf.person(:email => '1147e414eec8b785fb760f13f7890a767ffaef6e')

