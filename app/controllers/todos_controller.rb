class TodosController < ApplicationController
  def index
    @todos = Todo.all
    respond_to do |format|
      format.html
      format.json { render :json => @todos }
    end
  end

  def new
    @todo = Todo.new
    respond_to do |format|
      format.html
      format.json { render :json => @todo }
    end



  end

  def create
    @todo = Todo.new
    @todo.name = params[:todo_name]
    if @todo.save
      render :status => :created, :content_type => "application/json", :json => @todo
    else
      render :status => :unprocessable_entity, :json => @todo.errors.full_messages

    end
  end




end