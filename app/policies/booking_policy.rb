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
    #celui qui a le studio qui peut agir
    user == record.user
  end

  def accept?
    #celui qui a le studio qui peut agir
    user == record.user
  end

  def destroy?
    user == record.user
  end
end
