Bootcamp::Application.routes.draw do
  match 'athletes/sport/:sport/league/:league/(athlete_id/:athlete_id)'          => 'espn#athletes'
  match 'athletes/sport/:sport/league/:league/athlete_id/:athlete_id/news'       => 'espn#news'
 
end