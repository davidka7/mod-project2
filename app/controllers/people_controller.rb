class PeopleController < ApplicationController
   #skip_before_action :authorized, only[:new, :create]
   #before_action :authorized
   before_action :authorized
  skip_before_action :authorized, only: [:index, :new, :create]
   
    def show
    
        @person = Person.find(params[:id])
        @topics = Topic.all.select{|topic| topic.person_id == @person.id}
    end 



    def new
        @person = Person.new
    end
    def create
        
        @person = Person.create(params_people)
       # byebug
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
