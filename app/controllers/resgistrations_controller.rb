class RegistrationsController < Devise::RegistrationsController
    def create
      super
      if resource.persisted?
        UserProfile.create(user: resource)
      end
    end
  end