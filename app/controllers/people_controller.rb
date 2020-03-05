class PeopleController < ApplicationController
    
    
    def show
    
        @person = Person.find(params[:id])
    end 



    def new
        @person = Person.new
    end
    def create
        @person = Person.create(params_people)
        if @person.valid?
        
        redirect_to people_path
        else
            render :new
            flash[:error]=@person.errors.full_messages
        end

    end 

    def destroy
        @person = Person.find(session[:person_id])
        @person.destroy
        redirect_to new_person_path
    end

    private

    def params_people
        params.require(:person).permit(:username, :password)
    end

end
