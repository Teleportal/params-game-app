Rails.application.routes.draw do
  get '/name_query_url' => 'games#name_query_method'
  get '/number_guessing' => 'games#number_guessing_method'
  get '/guessing_numbers/:guess' => 'games#guessing_numbers_method'
  get '/game/*sony' => 'games#companies_method'
end
