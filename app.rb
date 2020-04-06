require "sinatra"

get "/:page?" do
  if params["page"].nil?
    cache_control :public, max_age: 1
    erb :index, layout: :layout
  else
    erb params["page"].to_sym, layout: :layout
  end
end
