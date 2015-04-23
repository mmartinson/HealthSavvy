class HealthyThingSerializer < ActiveModel::Serializer
  attributes :id, :name, :value, :daily_limit
end
