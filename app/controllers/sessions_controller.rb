class SessionsController < ApplicationController
    def new

    end
    def create 
        @person = Person.find_by(username:params[:username])
        #byebug
       
        if @person && @person.authenticate(params[:password])
           # session[:person_id] = @person.id
           login_user(@person)
            redirect_to @person
        else 
            flash[:notice] = 'wrong'
            redirect_to login_path
        end 
        
    end

    def destroy
        session.delete(:person_id)
        flash[:notice] = "logout Succefully"
        redirect_to people_path

    end
end