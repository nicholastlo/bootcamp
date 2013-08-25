Bootcamp::Application.routes.draw do
  root :to => 'espn#index'
  match 'athletes/sport/:sport/league/:league/(athlete_id/:athlete_id)'          => 'espn#athletes', :league => /[^\/]*/
  match 'athletes/sport/:sport/league/:league/athlete_id/:athlete_id/news'       => 'espn#athlete_news', :league => /[^\/]*/
  match 'teams/sport/:sport/league/:league/(team_id/:team_id)'                   => 'espn#teams', :league => /[^\/]*/
  match 'teams/sport/:sport/league/:league/team_id/:team_id/news'                => 'espn#team_news', :league => /[^\/]*/
end
