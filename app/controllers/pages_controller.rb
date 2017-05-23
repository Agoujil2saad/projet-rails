class PagesController < ApplicationController
  def home
    @titre="home"
  end

  def aide
    @titre="aide"
  end
  
  def contact
    @titre="contact"
  end
  
end
