
# Jekyll-Aspect-Ratio #
enables the use of a custom Liquid tag {% aspectratio filepath %}, to find the aspect ratio of an image or video file.

## Example use cases ##
- Specify the flex-grow value of an item so that a series of items of different aspect ratios can fill up one row, all being the same height
- Sort or separate items by aspect ratio, to display horizontal vs vertical videos together (aspect ratio <1 is a portrait item, >1 is landscape)

## Installation ##
```ruby 
# via ruby-gems
- gem install jekyll-aspect-ratio
# or via bundler
- bundle add jekyll-aspect-ratio
```

## Jekyll integration ##
Add the gem to your plugins inside _config.yml:

```yaml
plugins:
- jekyll-aspect-ratio
```

## Supported file types ##

This plugin uses ![mini_exiftool](https://github.com/janfri/mini_exiftool), so supports all ![Exiftool supported files](https://exiftool.org/#supported). This means it's capable of handling both videos and images.

## Usage ##

```
{% assign filepath = "assets/media/2020-05-10/image1.jpg" }
{% aspectratio filepath %} >>> 1.33
{% aspectratio "assets/media/2020-05-10/image2.jpg" } >>> 0.56
{% aspectratio /assets/media/2020-05-10/video1.mp4 } >>> 1.77
{% aspectratio "assets/media/2020-05-10/not-a-real-file.jpg" } >>> 0
```