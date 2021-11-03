module Operations
  module LinkOperation
    class Create < Pathway::Operation
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
        set :create_link
      end

      private

      def create_link(params)
        Link.create(params[:input])
      end
    end
  end
end


