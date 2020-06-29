Rails.application.routes.draw do

  get "/search_ac" => 'autosuggest#get_suggestions', as: 'search_ac'

end
