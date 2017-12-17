class Career < ApplicationRecord

  def self.search(query) 
    if query
      Career.where(language: query)
    else
      all 
    end
  end
end
