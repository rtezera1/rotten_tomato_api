class Search
  require 'rottentomatoes'
  include RottenTomatoes

  def self.search(title)
    Rotten.api_key = ENV['TOMATO_TOKEN']
    result = RottenMovie.find(title: title, limit: 1)
    if result == []
      return 'Not Found'
    else
      return result
    end
  end

  def self.title(query)
    if query[:title] != nil || query[:title] != ''
      return query[:title]
    else
      return "Not Found"
    end
  end

  def self.year(query) 
    if query[:year] != nil || ''
      return query[:year]
    else
      return "Not Found"
    end
  end

  def self.synopsis(query)
    if query[:synopsis] == nil || query[:synopsis] == " "
      return "Not Found"
    else
      return query[:synopsis]
    end
  end
end
