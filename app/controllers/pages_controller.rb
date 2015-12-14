class PagesController < ApplicationController
  before_filter :disable_nav, only: [:index]
  def index
    @email = Email.new
  end

  def jobs
  end
end
