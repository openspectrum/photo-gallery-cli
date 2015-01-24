def absolute_path(file)
  File.absolute_path(file)
end

def img_tag(photo_path)
  img_tag_str = "<img src=\"#{photo_path}\">"

  return img_tag_str
end

def html_gallery(image_tag)
  full_html = <<-HTML
<!DOCTYPE html>
<html>
<head>
  <title>My Gallery</title>
</head>
<body>
  <h1>My Gallery</h1>
  #{image_tag}
</body>
</html>
  HTML

  return full_html
end

def run_test
  photo_file = "photos/bunny-1.jpg"

  valid_img_html = "<img src=\"/Users/tanner/Clients/code-union/cohort-web-fun-2015-01-19/photo-gallery-cli/photos/bunny-1.jpg\">"

  p absolute_path(photo_file) == "/Users/tanner/Clients/code-union/cohort-web-fun-2015-01-19/photo-gallery-cli/photos/bunny-1.jpg"
  p img_tag( absolute_path(photo_file) ) == valid_img_html
  p html_gallery(valid_img_html).include?(valid_img_html)
end

# run_test

if __FILE__ == $PROGRAM_NAME
  photo_file = ARGV[0]
  abs_photo_path = absolute_path(photo_file)
  image_tag = img_tag(abs_photo_path)
  full_page_html = html_gallery(image_tag)

  puts full_page_html
end
