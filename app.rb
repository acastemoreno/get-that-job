require "sinatra"

set :static_cache_control, [:public, max_age: 1]

get "/:page?" do
  cache_control :public, max_age: 1
  if params["page"].nil?
    erb :index, layout: :layout
  else
    erb params["page"].to_sym, layout: :layout
  end
end
