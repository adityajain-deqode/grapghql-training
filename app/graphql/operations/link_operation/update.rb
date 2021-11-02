module Operations
  module LinkOperation
    class Update < Pathway::Operation
      context :link

      contract do
        params do
          required(:url).value(:string)
          required(:description).value(:string)
        end
      
        rule(:url) do
          key.failure(:invalid) unless value =~ Link::URL_REGX
        end
      end

      process do
        step :validate
        set :update_link
      end

      def update_link(params, **)
        if link.update(params[:input])
          link
        else
          link.errors
        end
      end
    end
  end
end


