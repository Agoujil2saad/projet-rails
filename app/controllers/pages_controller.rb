class PagesController < ApplicationController
  def home
     @titre="home"
    if logged_in?
    @cour = current_user.cours.build if logged_in?
    @feed_items = current_user.feed.paginate(page: params[:page])
 end
  end

  def aide
    @titre="aide"
  end
  
  def contact
    @titre="contact"
  end
  
end
