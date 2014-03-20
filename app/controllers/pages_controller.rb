class PagesController < ApplicationController
  skip_before_filter :authenticate_user!

  def index
  end

  def about
  end

  def contact
    # Get object for Todd's account
    @todd = User.find_by(email: "hainsworth.todd@gmail.com")
  end
end
