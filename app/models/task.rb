class Task
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title
  field :done, type: Boolean

  def as_json(options = {})
    attrs = super(options)
    attrs[:id] = attrs[:_id]
    attrs
  end

end
