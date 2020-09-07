class PublicController < ApplicationController
	layout 'public'

def search
    @public = Image.where("LOWER(title) LIKE ?", "%" + params[:q].downcase + "%")
  end

def about
  end		

end