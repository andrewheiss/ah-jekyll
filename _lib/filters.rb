module Jekyll
  module Filters
    def keys(input)
      input.keys
    end

    def tagged(input, tag)
      input.select{|post| post.tags.include? tag}
    end
    
    def last_of_year(post)
      post['next'].nil? or post['next'].date.year != post['date'].year
    end

  end
end