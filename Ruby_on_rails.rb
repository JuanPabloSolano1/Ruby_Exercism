# 1 step
rails new MySite

# 2 step
bundle install

#3 step
rails server
#4 step
visit http://localhost:8000.

#5 Creating a controller
rails generate controller Pages

#6
#After rails generate finishes running, in the Code Editor, open app/controllers/pages_controller.rb.
#Within the class PagesController,
#add a method home:

class PagesController < ApplicationController

  def home
  end

end

#7
#Now that we have a controller, let’s move on to the second part of the request/response cycle and create a route.
#Open config/routes.rb and underneath line 1, type:

get 'welcome' => 'pages#home'


#6
#start a rails server
rails s -p 4001
