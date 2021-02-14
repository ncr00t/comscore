module ApplicationHelper
  def serialize(object, serializer_class, options = nil, type = :json)
    serializer = create_serializer(object, serializer_class, options)
    if type == :hash
      serializer.serializable_hash
    else
      serializer.serialized_json
    end
  end

  def create_serializer(object, serializer_class, options = nil)
    if options
      serializer_class.new(object, options)
    else
      serializer_class.new(object)
    end
  end
end
