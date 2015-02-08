class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable
  
  has_many :comments, dependent: :delete_all
  has_and_belongs_to_many :roles

def latitude
 return 42.255133
end
def longitude
 return -85.641692
end
  def role?(role)
    return !!self.roles.find_by_name(role.to_s)
  end

  def make_admin
    self.roles << Role.admin
  end

  def revoke_admin
    self.roles.delete(Role.admin)
  end

  def admin?
    role?(:admin)
  end

  def self.find_for_facebook_oauth(access_token, signed_in_resource=nil)
    data = access_token['info']
    if user = User.find_by_email(data["email"])
      user
    else # Create a user with a stub password.
      User.create!(:name => data["name"],
                   :email => data["email"], 
                   :password => "Welcome",
                   :avatar => data["image"]+"?type=square")
    end
  end
end
