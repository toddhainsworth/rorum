class PagesController < ApplicationController
  def index
  end

  def about
  end

  def contact
    # Get object for Todd's account
    @todd = User.find_by(email: "hainsworth.todd@gmail.com")
  end
end
