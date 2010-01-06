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
    
    def descriptionify(excerpt)
      if excerpt.nil?
        description = 'Andrew Heiss is a student and web designer and developer from Utah who lives in Egypt, working on his MA in Middle East Studies at AUC.'
      else
        description = excerpt
      end
      
      "#{description}"
    end

  end
end