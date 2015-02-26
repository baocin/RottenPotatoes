# Seed the RottenPotatoes DB with some movies.
more_movies = [
  {:title => 'Aladdin', :rating => 'G',
    :release_date => '25-Nov-1992', :description => 'Aladdin Description Text'},
  {:title => 'When Harry Met Sally', :rating => 'R',
    :release_date => '21-Jul-1989', :description => 'When Harry Met Sally description text'},
  {:title => 'The Help', :rating => 'PG-13',
    :release_date => '10-Aug-2011', :description => 'The Help description text'},
  {:title => 'Raiders of the Lost Ark', :rating => 'PG',
    :release_date => '12-Jun-1981', :description => 'Raiders of the Lost Ark desciption text'}
]

more_movies.each do |movie|
  Movie.create!(movie)
end
