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
      redirect_to medics_path, notice: 'Medic cadastrado com sucesso.'
    else
      render :new
    end
  end

  def edit
    @medic = Medic.find(params[:id])
  end

  def update
    @medic = Medic.find(params[:id])
    if @medic.update(medic_params)
      redirect_to medics_path, notice: 'Medic atualizado com sucesso.'
    else
      render :edit
    end
  end

  def show
    @medic = Medic.find(params[:id])
  end
end

private
def medic_params
  params.require(:medic).permit(:name, :cpf, :email, :crm, :speciality)
end
