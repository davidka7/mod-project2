class TopicsController < ApplicationController
    
    def show
        @topic = Topic.find(params[:id])
       #  byebug
      end
      def new
        @topic = Topic.new
      end
      def create
        @topic = Topic.new(besties)
        if @topic.valid?
          @topic.save
          #byebug
          redirect_to person_path(session[:person_id])
        else
          flash[:errors] = @topic.errors.full_messages
          render :new
         #  <%= f.collection_select , Power.all, :id, :name %>
    
        end
      end
        private

        def besties
            params.require(:topic).permit(:label)
          end
          
     
end
