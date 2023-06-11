class MedicsController < ApplicationController
  def new
    @medic = Medic.new
  end
end
