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
      return query[:title]
  end

  def self.year(query) 
    if query[:year] != nil || ''
      return query[:year]
    else
      return "Not Found"
    end
  end

  def self.posters(query)
    if query[:posters] == nil || query[:posters] == " "
      return "Not Found"
    else
      return query[:posters]
    end
  end
end
