require 'set'

our_class = %w(Rob David Nancy Kalea Laura Dave Demetra Kendrick Phil Ben Michael Miguel Chris)

our_class.each do |student|
  puts student if student.length < 5
end

sentence = "Ruby is actually kind of fun once you get used to it."

def four_words(text)
  four = []
  text.split.each do |word|
    four << word if word.length == 4
    end
    four
end

four = four_words(sentence)
puts four

def star_finder (to_find, array_of_titles)
  array_of_titles.select do |title|
    title[:stars].include? to_find
  end
end

movies = []
movies << {
  title: "Forest Gump",
  budget: 55,
  stars: ["Tom Hanks"]
}
movies << {
  title: "Star Wars",
  budget: 11,
  stars: ["Mark Hamill", "Harrison Ford"]
}
movies << {
  title: "Batman Begins",
  budget: 150,
  stars: ["Christian Bale", "Liam Neeson", "Michael Caine"]
}
movies << {
  title: "Titanic",
  budget: 200,
  stars: ["Kate Winslet", "Leonardo DiCaprio"]
}
movies << {
  title: "Inception",
  budget: 160,
  stars: ["Leonardo DiCaprio", "JGL"]
}

low_budget = []

movies.each do |movie|
  if movie[:budget] < 100
    low_budget << movie[:title]
  end
end

puts low_budget

star2 = star_finder("Leonardo DiCaprio", movies)
puts star2.collect{|movie| movie[:title]}

def how_many_words(text, num)
  sample_text = []
  text.split.each do |word|
    sample_text << word if word.length == num
    end
    sample_text
end

test_words = how_many_words(sentence, 2)
puts test_words

total_budget = []

movies.each do |movie|
  total_budget << movie[:budget]
  end

puts total_budget.inject(0, &:+)

def staring? (actor, array_of_movies)
    array_of_movies.select do |act|
      act[:stars].include? actor
    end
end

staring2 = staring?("Tom Hanks", movies)
puts staring2.collect{|movie| movie[:title]}

act_list = []
movies.each do |movie|
  act_list << movie[:stars]
end

act_set = act_list.flatten(1).collect { |arr| arr.size == 1 ? arr[0] : arr }.to_set

puts act_set

avg_budget = total_budget.inject(0, &:+) / total_budget.size

puts avg_budget

def median(total_budget)
  sorted = total_budget.sort
  len = sorted.length
  (sorted[(len - 1) / 2] + sorted[len / 2]) / 2.0
end

puts median(total_budget)
