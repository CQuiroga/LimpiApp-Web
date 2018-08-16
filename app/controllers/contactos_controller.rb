class ContactosController < ApplicationController

  def index
    @contactos = Contacto.all
  end

  def new
    @contacto = Contacto.new
  end

  def create
      @contacto = Contacto.new(contacto_params)
      if @contacto.save

        redirect_to contactos_path
      else

      render :new
    end
  end
# select
def show
  @contacto = Contacto.find(params[:id])
end

#insert
def edit
  @contacto = Contacto.find(params[:id])
end

#eliminar
def destroy
  @contacto = Contacto.find(params[:id])
  @contacto.destroy
  redirect_to contactos_path
end
#update
def update
  @contacto = Contacto.find(params[:id])
  if @contacto.update(contacto_params)
    redirect_to (@contacto)
  else
    render :edit
end
end


#permisos para que pueda actualizar parametros del objeto articulo
  private
  def contacto_params
    params.require(:contacto).permit(:nombre, :email, :telefono, :mensaje)
  end
end
