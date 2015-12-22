class PagesController < ApplicationController
  before_filter :disable_nav, only: [:index]
  def index
    @email = Email.new
  end

  def mobilejob
  end

  def railsjob
  end
end
