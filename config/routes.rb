Rails.application.routes.draw do


 get 'projects', to: 'projects#index'
  get 'todos', to: 'todo#index'
  get   'todoshow',      to: 'todo#show'

  root 'todo#show'
  post   'projectcreate',      to: 'projects#create'
  delete  'projectdelete:id',  to: 'projects#destroy', as: 'projectdelete'
  patch  'projectupdate:id',  to: 'projects#update', as: 'projectupdate'
  post   'projectedit:id',   to: 'projects#edit',     as: 'projectedit'

  post   'todocreate',      to: 'todo#create'
  delete  'tododelete:id',  to: 'todo#destroy', as: 'tododelete'
  patch  'todoupdate:id',  to: 'todo#update', as: 'todoupdate'
  post   'todoedit:id',   to: 'todo#edit',     as: 'todoedit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
