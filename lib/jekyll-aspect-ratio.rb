require 'jekyll'
require 'mini_exiftool'

class AspectRatio < Liquid::Tag

  def initialize(tagName, content, tokens)
    super
    @input = content
  end

  def render(context)
    # If this is a parameter name (from {% assign x = "path" %})
    # then we need to pass that in as a key to context to get its value
    if context.key?(@input)
        filepath = context[@input]
    else
        filepath = @input
    end

    # Strip leading spaces and quotes
    filepath = filepath.strip.tr('"', '').tr('\'', '')

    # Strip off the first '/', if there is one
    #  as that confuses things with relative filepaths
    if filepath[0] == "/"
        filepath = filepath[1..-1]
    end

    # MiniExfitool doesn't like relative paths
    abspath = File.expand_path(filepath)

    if (File.file?(abspath))
        mediaObj = MiniExiftool.new abspath
        height = mediaObj.image_height
        width = mediaObj.image_width

        # If the video is rotated, we need to swap width and height
        if mediaObj.rotation == 90 or mediaObj.rotation == 270
            temp = height
            height = width
            width = temp
        end

        # Avoid division by zero errors
        if height != 0
            output = (width.to_f/height.to_f).truncate(2)
        end
    end

    return output
  end
  
  Liquid::Template.register_tag("aspectratio", AspectRatio)
end