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

  def decline?
    user == record.studio.user
  end

  def accept?
    user == record.studio.user
  end

  def destroy?
    user == record.studio.user || user == record.user
  end
end
