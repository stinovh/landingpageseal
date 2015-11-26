class PagesController < ApplicationController
  def index
    @email = Email.new
  end
end
