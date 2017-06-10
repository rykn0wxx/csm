class TodoListsController < ApplicationController
  before_action :set_todo_list, only: [:show, :edit, :update, :destroy]

  def index
    @todo_lists = TodoList.all
  end

  def show
  end

  def new
    @portal = Portal.find(params[:portal_id])
    @todo_list = TodoList.new
    @todo_list.tasks.build
  end

  # GET /todo_lists/1/edit
  def edit
    @portal = Portal.find(params[:portal_id])
    @todo_list.tasks.build
  end

  # POST /todo_lists
  # POST /todo_lists.json
  def create
    @portal = Portal.find(params[:portal_id])
    @todo_list = TodoList.new(todo_list_params)
    @todo_list.portal_id = @portal.id

    if @todo_list.save
      redirect_to portal_path(@portal), notice: 'Todo list was successfully created.'
    else
      render 'new'
    end

  end

  # PATCH/PUT /todo_lists/1
  # PATCH/PUT /todo_lists/1.json
  def update
    @portal = Portal.find(params[:portal_id])
    if @todo_list.update(todo_list_params)
      redirect_to portal_path(@portal), notice: 'Todo list was successfully updated.'
    else
      render 'edit'
    end
  end

  # DELETE /todo_lists/1
  # DELETE /todo_lists/1.json
  def destroy
    @todo_list.destroy
    redirect_to portals_path(params[:portal_id]), notice: 'Todo list was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo_list
      @todo_list = TodoList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def todo_list_params
      params.require(:todo_list).permit(:portal_id, :name, :tasks_attributes => Task.attribute_names.map(&:to_sym).push(:_destroy))
    end
end
