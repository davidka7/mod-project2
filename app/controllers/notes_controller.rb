class NotesController < ApplicationController
    def show
        @note = Note.find(params[:id])
       #  byebug
      end
      def new
        @note = Note.new
      end
      def create
        @note = Note.new(besties)
        if @note.valid?
          @note.save
          #byebug
          redirect_to person_path(session[:person_id])
        else
          flash[:error] = @note.errors.full_messages
          render :new
         #  <%= f.collection_select , Power.all, :id, :name %>
    
        end
      end
        private

        def besties
            params.require(:note).permit(:description, :topic_id, :size_id)
          end
          
end
