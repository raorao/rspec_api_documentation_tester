Rails.application.routes.draw do
  post "foo", to: "foo#bar"
  patch "foo", to: "foo#bar"
  get "foo", to: "foo#bar"
  delete "foo", to: "foo#bar"
end
