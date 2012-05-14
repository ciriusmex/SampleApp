module ApplicationHelper
  def fullTitle(pageTitle)
  	baseTitle = "Ruby on Rails Tutorial Sample App"
  	if !pageTitle.empty?
  		"#{baseTitle} | #{pageTitle}"
  	else
  		baseTitle
  	end
  end
end
