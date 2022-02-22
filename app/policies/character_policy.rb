class CharacterPolicy < ApplicationPolicy
  class Scope < Scope

    def resolve
      scope.all
    end
  end

  def create?
    return true
  end

  def show?
    true
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end



    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
end
