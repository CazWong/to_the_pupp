class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def create?
    true
  end

  def update?
    authorised_user?
  end

  def destroy?
    authorised_user?
  end

  private

  def authorised_user?
    record.user == user || user.username == 'admin'
  end
end
