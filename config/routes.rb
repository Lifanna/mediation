Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    ActiveAdmin.routes(self)
    root 'home#index'
    get '/index', to: 'home#index'
    get '/mediation_law', to: 'home#mediation_law'
    get '/mediation_code', to: 'home#mediation_code'
    get '/scientific_activity', to: 'home#scientific_activity'
    get '/mediation_courses', to: 'home#mediation_courses'
    get '/mediation_register', to: 'home#mediation_register'
    get '/announcements', to: 'home#announcements'
    get '/announcements/:id', to: 'home#announcement_index'
    get '/news', to: 'home#news'
    get '/news/:id', to: 'home#news_index'
    get '/questions', to: 'home#questions'
    get '/archive', to: 'home#archive'
    get '/error', to: 'home#error_page'
    post '/mail', to: 'home#send_mail'
    get ":url" => "errors#render_error", :constraints => { :url => /.*/ }
  end

  # get ":url" => "errors#render_error", :constraints => { :url => /.*/ }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
