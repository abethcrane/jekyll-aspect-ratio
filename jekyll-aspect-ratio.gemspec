Gem::Specification.new do |s|
    s.name        = 'jekyll-aspect-ratio'
    s.version     = '0.0.0'
    s.date        = '2020-05-10'
    s.summary     = "A Jekyll plugin to create a custom Liquid tag that returns the aspect ratio of an image or video"
    s.description = <<-EOF
Jekyll-Aspect-Ratio enables the use of a custom Liquid tag {% aspectratio filepath %}, to find the aspect ratio of an image or video file. 

Example use cases:
- Specify the flex-grow value of an item so that a series of items of different aspect ratios can fill up one row, all being the same height
- Sort or separate items by aspect ratio, to display horizontal vs vertical videos together (aspect ratio < 1 is a portrait item, >1 is landscape)
EOF
    s.authors     = ["Beth Crane"]
    s.email       = "hello@bethcrane.com"
    s.files       = ["lib/jekyll-aspect-ratio.rb"]
    s.homepage    = "https://github.com/abethcrane/jekyll-aspect-ratio"
    s.license     = "MIT"
  end