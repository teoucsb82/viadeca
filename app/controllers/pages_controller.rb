class PagesController < ApplicationController
  before_filter :authenticate_user!, except: [:home]
  def home
  end

  def avail
  end

  def contact
  end

  def apply
  end
end
