Richard::Application.routes.draw do
  root to: "graphs#show"
  get 'data' => "graphs#data"
end
