def absolute_path(file)
  File.absolute_path(file)
end

def run_test
  p absolute_path("photos/bunny-1.jpg") == "/Users/tanner/Clients/code-union/cohort-web-fun-2015-01-19/photo-gallery-cli/photos/bunny-1.jpg"
end

# run_test

photo_file = ARGV[0]

puts absolute_path(photo_file)
