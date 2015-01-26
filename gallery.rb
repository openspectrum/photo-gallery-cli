def absolute_path(file)
  File.absolute_path(file)
end

def img_tag(photo_path)
  img_tag_str = "<img src=\"#{photo_path}\">"

  return img_tag_str
end

def html_gallery(image_tags)
  html_top = <<-HTML
<!DOCTYPE html>
<html>
<head>
  <title>My Gallery</title>
</head>
<body>
  <h1>My Gallery</h1>
  HTML

  images_html = ""

  image_tags.each do |tag|
    images_html += tag
  end

  html_bottom = <<-HTML
</body>
</html>
  HTML

  return html_top + images_html + html_bottom
end

def run_test
  photo_file = "photos/bunny-1.jpg"

  valid_img_html = "<img src=\"/Users/tanner/Clients/code-union/cohort-web-fun-2015-01-19/photo-gallery-cli/photos/bunny-1.jpg\">"
  valid_img_html_2 = "<img src=\"/Users/tanner/Clients/code-union/cohort-web-fun-2015-01-19/photo-gallery-cli/photos/bunny-2.jpg\">"

  p absolute_path(photo_file) == "/Users/tanner/Clients/code-union/cohort-web-fun-2015-01-19/photo-gallery-cli/photos/bunny-1.jpg"
  p img_tag( absolute_path(photo_file) ) == valid_img_html
  puts html_gallery( [valid_img_html, valid_img_html_2] ).include?(valid_img_html)
end

# run_test

if __FILE__ == $PROGRAM_NAME
  all_the_images = []

  ARGV.each do |file|
    abs_filename = absolute_path(file)
    image_tag = img_tag(abs_filename)

    all_the_images.push(image_tag)
  end

  full_page_html = html_gallery(all_the_images)

  puts full_page_html
end
