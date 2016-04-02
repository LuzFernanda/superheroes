class PagesController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def batman
  end

  def superman
  end

  def batmanvssuperman
  	@heroe=Heroe.new
  end
end
