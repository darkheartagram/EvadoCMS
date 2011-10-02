#require 'app/controllers/application_controller'



 class RadekController < ApplicationController
 
  def home
    @title = "home"
  end

  def contact
    @title = "contact"
  end

  def about
    @title = "about"
  end
  
  def help_help
  @title = "help"
  end
  
  def testing
  @title = "testing"
  end
  
 end
 
