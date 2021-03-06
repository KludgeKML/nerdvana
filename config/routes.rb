Nerdvana::Application.routes.draw do
  get 'nerdvana/index'

  get 'things/sofa(/:arm)' => 'nerdvana#sofa'

  get 'latest_ip' => 'ip_record#get_ip'
  post 'latest_ip' => 'ip_record#set_ip'

  root 'nerdvana#index'
end
