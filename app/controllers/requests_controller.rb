class RequestsController < ApplicationController
  def index
    @requests= Request.all
    render json: @requests
  end

  def show
    @request= Request.find_by(nombre: params[:id])
    @count= Request.where(nombre: params[:id]).count
    if @request
      render json: [@request,  {message: "ha realizado #{@count} peticiones"}]

    else
      render json: {message: 'no existe usuario'}
  end
end

end
