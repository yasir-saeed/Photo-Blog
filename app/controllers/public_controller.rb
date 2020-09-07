class PublicController < ApplicationController
	layout 'public'

def search
    @public = Image.where("title LIKE ?", "%" + params[:q] + "%" + "COLLATE utf8_general_ci")
  end

def about
  end		

end