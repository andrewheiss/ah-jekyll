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
    
    def fix_spaces(input)
      input.gsub(' ', '-')
    end
    
    # Would be nice to do this with Hpricot or Tidy or something in the future, rather than parsing HTML with regex (evil, I know :) ). Like Henrick's - http://henrik.nyh.se/2008/01/rails-truncate-html-helper
    def close_tags(text)
      open_tags = []
      text.scan(/\<([^\>\s\/]+)[^\>\/]*?\>/).each { |t| open_tags.unshift(t) }
      text.scan(/\<\/([^\>\s\/]+)[^\>]*?\>/).each { |t| open_tags.slice!(open_tags.index(t)) }
      open_tags.each {|t| text += "</#{t}>" }
      text
    end

  end
end