class ApplicationController < ActionController::Base

    def login_user(person)
        session[:person_id] = @person.id
end
end
