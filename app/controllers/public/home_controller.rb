module Public
	class HomeController < PublicController
      def index
      	@image = Image.published
      end
     end
end
