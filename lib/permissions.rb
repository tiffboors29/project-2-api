module Permissions
  def changeable_by?(user)
    return false if user.nil?
    user.admin?
  end
end
