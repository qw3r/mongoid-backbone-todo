class Todo.Routers.TasksRouter extends Backbone.Router
  initialize: (options) ->
    @tasks = new Todo.Collections.TasksCollection()
    @tasks.reset options.tasks

  routes:
    "new"      : "newTask"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newTask: ->
    @view = new Todo.Views.Tasks.NewView(collection: @tasks)
    $("#tasks").html(@view.render().el)

  index: ->
    @view = new Todo.Views.Tasks.IndexView(tasks: @tasks)
    $("#tasks").html(@view.render().el)

  show: (id) ->
    task = @tasks.get(id)

    @view = new Todo.Views.Tasks.ShowView(model: task)
    $("#tasks").html(@view.render().el)

  edit: (id) ->
    task = @tasks.get(id)

    @view = new Todo.Views.Tasks.EditView(model: task)
    $("#tasks").html(@view.render().el)
