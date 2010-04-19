# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

    def show_messages(flash)
    output = ""
    flash.each do |type, message|
      output << "$.jGrowl('#{message}');"
    end
    flash.discard
    output
    end
  
end
