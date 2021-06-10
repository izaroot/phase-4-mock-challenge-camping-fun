class SignupSerializer < ActiveModel::Serializer
  attributes :id, :camper_id, :activity_id, :time, :name, :difficulty

  belongs_to :activity, serializer: ActivitySerializer

  def name
    self.object.activity.name
  end

  def difficulty
    self.object.activity.difficulty
  end
end
