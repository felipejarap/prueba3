class ApplicationController < ActionController::Base
     #nos permite ver la informacion de todo
    def index
        @todos = Todo.all
    end
    #metodo en el cual creamos para realizar instancia
    def news
        @todo = Todo.new
    end
    #nos permite ver el valor de una instancia en especifico
    def show
        @todo = Todo.find(params[:id])
    end
    #metodo en el cual nos permite pasar valores a sus atributos para crear la isntancia 
    def create
        @todo = Todo.new(todo_parametros)
        if @todo.save
            redirect_to @todo
        else
            render 'new'
        end
    end
    #metodo para buscar la clave primaria para luego poder editar sus campos en la base de datos
    def edit
        @todo = Todo.find(params[:id])
    end
    #metodo para actualizar los parametros de todo en la base de datos
    def update
        @todo = Todo.find(params[:id])
        if @todo.update(todo_parametros)
            redirect_to @todo
        else
            render 'edit'
        end
    end

    #metodo en el cual buscamos la clave primaria para luego eliminar de la base datos
    def destroy
        @todo = Todo.find(params[:id])
        @todo.destroy

        redirect_to todos_path
    end

    private
    #metodo que ayuda a recargar los parametos de la clase Todo
      def todo_parametros
          params.require(:todo).permit(:description, :completed)
      end
end
