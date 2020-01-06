$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  result = {}
  director_index= 0 
    while director_index < nds.size do
      curent_director = nds[director_index][:name]
      result[curent_director] = gross_for_director(nds[director_index])
      director_index += 1
    end
  result
end


def gross_for_director(director_movies)
  movie_index = 0 
  movie = director_movies[:movies]
  total_gross = 0
    while movie_index < movie.size do
     total_gross += movie[movie_index][:worldwide_gross]
     movie_index+=1
    end
  total_gross
end
