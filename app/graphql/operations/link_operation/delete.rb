module Operations
  module LinkOperation
    class Delete < Pathway::Operation
      context :link

      def call
        if link.destroy
          link
        else
          link.errors
        end
      end
    end
  end
end


