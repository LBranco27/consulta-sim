class MedicsController < ApplicationController

  def index
    @medic = Medic.all
  end

  def new
    @medic = Medic.new
  end

  def create
    @medic = Medic.new(medic_params)
    if @medic.save
      redirect_to @medic
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @medic = Medic.find(params[:id])
  end

  def update
    @medic = Medic.find(params[:id])
    if @medic.update(medic_params)
      redirect_to @medic
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def show
    @medic = Medic.find(params[:id])
  end

  def destroy
    @medic = Medic.find(params[:id])
    @medic.destroy

    redirect_to root_path, status: :see_other
  end
end

private
def medic_params
  params.require(:medic).permit(:name, :cpf, :email, :crm, :speciality)
end
