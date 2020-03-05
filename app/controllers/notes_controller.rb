class NotesController < ApplicationController
  before_action :authorized
    def show
        @note = Note.find(params[:id])
       #  byebug
      end
      def new
        @note = Note.new
      end

      def create
        #byebug
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
      def edit
        @note = Note.find(params[:id])

      end
      def update
        @note = Note.find(params[:id])
        @note.update(besties)
        if @note
         
          #byebug
          redirect_to person_path(session[:person_id])
        else
          
          render :edit
         #  <%= f.collection_select , Power.all, :id, :name %>
    
        end

      end
        private

        def besties
          #byebug
            params.require(:note).permit(:description, :size_id, topic_ids:[])
          end
          #topics_attributes:[:label]
end
#<%= f.fields_for :topics, @note.topics.build do |topics_fields| %>
 # <%= topics_fields.text_field :label %>
#<% end %>
