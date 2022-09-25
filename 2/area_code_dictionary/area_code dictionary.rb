# frozen_string_literal: true

dial_book = {
  'newyork' => '212',
  'newbrunswick' => '732',
  'edison' => '908',
  'plainsboro' => '609',
  'sanfrancisco' => '301',
  'miami' => '305',
  'paloalto' => '650',
  'evanston' => '847',
  'orlando' => '407',
  'lancaster' => '717'
}

# Get city names from the hash
def get_city_names(book)
  book.each { |key, _| puts "\t#{key}" }
end

# Get area code based on given hash and key
def get_area_code(book, selector)
  return "The area code for #{selector} is: " + book[selector] if book.key?(selector)

  "Sorry, #{selector} is not in the address book"
end

# Execution flow
loop do
  print 'Do you want to lookup an area code based on a city name? (Y/N):'
  answer = gets.chomp.downcase
  break if answer != 'y'

  puts 'Which city would you like an area code for?'
  get_city_names(dial_book)
  print 'Enter selection:'
  selection = gets.chomp.downcase
  puts get_area_code(dial_book, selection)
end
