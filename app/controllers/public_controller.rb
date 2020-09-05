class PublicController < ApplicationController
	layout 'public'

def search
    @public = Image.where("title LIKE ?", "%" + params[:q] + "%")
  end

end