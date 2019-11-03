class HomeController < ApplicationController
  
  def index
  	@active_link = 'home'
  	redirect_to controller: 'blogs',:action=>'show', id: 5
  end

  def contact
  	@active_link = 'contact'
  end

  def about
  	@active_link = 'about'
  end

end
