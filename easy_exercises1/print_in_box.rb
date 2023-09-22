#Write a method that will take a short line of text, and print it within a box.

def print_in_box(text)
  dashes = ''
  spaces = ''
  text.length.times {dashes << '-'}
  text.length.times {spaces << ' '}
  puts '+-' + dashes + '-+'
  puts '| ' + spaces + ' |'
  puts '| ' + text + ' |'
  puts '| ' + spaces + ' |'
  puts '+-' + dashes + '-+'
end

print_in_box("This is going to be some crazy long text!  Really want to emphasize how long this text is through the utilization of extremely lengthy words!")

#Further exploration TEXT WRAPPING!
