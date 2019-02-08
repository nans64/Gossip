class ApplicationController < ActionController::Base
	
  protect_from_forgery with: :exception
  include SessionsHelper

def flash_class(level)
    case level
        when :notice then "alert alert-info"
        when :success then "alert alert-success"
        when :error then "alert alert-error"
        when :alert then "alert alert-error"
    end
end




	
end
