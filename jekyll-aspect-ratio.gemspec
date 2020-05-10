Gem::Specification.new do |s|
    s.name        = 'jekyll-aspect-ratio'
    s.version     = '0.0.1'
    s.date        = '2020-05-10'
    s.summary     = "A Jekyll plugin to create a custom Liquid tag that returns the aspect ratio of an image or video"
    s.description = <<-EOF
This plugin enables the use of a custom Liquid tag {% aspectratio filepath %}, to find the aspect ratio of an image or video file. This can be used for e.g. specifying the flex-grow value of an item to display items of different aspect ratios on one line at the same height, or to separate out horizontal or vertical videos (aspect ratio > or < than 1).
EOF
    s.authors     = ["Beth Crane"]
    s.email       = "hello@bethcrane.com"
    s.files       = ["lib/jekyll-aspect-ratio.rb"]
    s.homepage    = "https://github.com/abethcrane/jekyll-aspect-ratio"
    s.license     = "MIT"
  end