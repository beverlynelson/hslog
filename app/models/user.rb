class User < ActiveRecord::Base
  has_many :educators
  has_many :students
  
  after_create :create_educator

  def self.from_omniauth(auth)
    find_by_provider_and_uid(auth["provider"], auth["uid"]) || create_with_omniauth(auth)
  end

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
    end
  end

  def create_educator
    e = Educator.find_or_create_by_id id
    raise 'User profile found when should be nil' unless e.user.blank?
    e.update_attributes :user_id=>self.id, :first_name => self.name
    e.save
  end
end
