module SpreeLarrysgraphicsAddPage
	module HomeControllerDecorator
		def about
			@products = Spree::Product.joins(:variants_including_master).where('spree_variants.sale_price is not null').distinct
		end
	end
end	
# To HomeController
Spree::HomeController.prepend SpreeLarrysgraphicsAddPage::HomeControllerDecorator			