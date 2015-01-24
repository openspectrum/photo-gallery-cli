def absolute_path(file)
  File.absolute_path(file)
end

def img_tag(photo_path)
  img_tag_str = "<img src=\"#{photo_path}\">"

  return img_tag_str
end

def run_test
  photo_file = "photos/bunny-1.jpg"

  p absolute_path(photo_file) == "/Users/tanner/Clients/code-union/cohort-web-fun-2015-01-19/photo-gallery-cli/photos/bunny-1.jpg"
  p img_tag( absolute_path(photo_file) ) == "<img src=\"/Users/tanner/Clients/code-union/cohort-web-fun-2015-01-19/photo-gallery-cli/photos/bunny-1.jpg\">"
end

# run_test

photo_file = ARGV[0]

puts img_tag( absolute_path(photo_file) )
