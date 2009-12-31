module Jekyll
  module Filters
    def keys(input)
      input.keys
    end

    def tagged(input, tag)
      input.select{|post| post.tags.include? tag}
    end
  end
end