Rails.application.routes.draw do
  get '/:id' => "short#show"
end
