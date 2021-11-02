module Operations
  module Link
    class Create < Pathway::Operation

      # context :current_user

      contract do
        # option :current_user
    
        params do
          required(:url).value(:string)
          required(:description).value(:string)
        end
      
        # rule(:url) do
        #   key.failure(:invalid)
        # end
      end

      process do
        step :validate 
        set :create_link
      end

      def create_link(params, **)
        debugger
        Link.create(params[:input])
      end
    end
  end
end


