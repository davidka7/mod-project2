class ApplicationController < ActionController::Base
    before_action :authorized, only: [:login]
    helper_method :current_person, :logged_in?
    def login_user(person)
        session[:person_id] = @person.id
end
#byebug
def current_person
#if session[:person_id]
    #@current_person ||= Person.find(session[:person_id]) if session[:person_id]
if session[:person_id]
    Person.find(session[:person_id])
end
#end
end 

def logged_in?
    !!current_person
end #

def authorized
    unless logged_in?
        flash[:notice] = "you must be logged in to see this page"
        redirect_to login_path
    end 
end 
end
