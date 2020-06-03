class TopicsController < ApplicationController
  before_action :authorized
    def show
        @topic = Topic.find(params[:id])
       #  byebug
      end
      def new
        @topic = Topic.new
        #@topics = Topic.all.select{|topic| topic.person_id == current_user.id}.new
      end
      def create
        @topic = Topic.new(besties.merge(person_id: current_person.id))
        if @topic.valid?
          @topic.save
          #byebug
          redirect_to person_path(session[:person_id])
        else
          flash[:errors] = @topic.errors.full_messages
          render :new
         #  <%= f.collection_select , Power.all, :id, :name %>
    
        end
        
        def destroy
          @delete = Delete.find(params[:id])
          @delete.destroy
          redirect_to people_path
        end
      end
        private

        def besties
            params.require(:topic).permit(:label)
          end
          
     
end
