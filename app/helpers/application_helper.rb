module ApplicationHelper
  def serialize(object, serializer_class, options = nil, type = :json)
    serializer = options ? serializer_class.new(object, options) : serializer_class.new(object)
    if type == :hash
      serializer.serializable_hash
    else
      serializer.serialized_json
    end
  end
end
