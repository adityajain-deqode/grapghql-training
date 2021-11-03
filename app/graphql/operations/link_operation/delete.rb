module Operations
  module LinkOperation
    class Delete < Pathway::Operation
      context :link

      def call
        return link if link.destroy

        link.errors
      end
    end
  end
end


