class Todo.Models.Task extends Backbone.Model
  idAttribute: '_id'
  paramRoot: 'task'

  defaults:
    title: null
    done: null

class Todo.Collections.TasksCollection extends Backbone.Collection
  model: Todo.Models.Task
  url: '/tasks'
