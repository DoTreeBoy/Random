def view_deets(num)
  @browser.button(:value => 'View Details', :index => num - 1).click
end

def left_menu(string)
  fail "List item not found" unless @browser.div(:class => "sb_content").text.include? string
end
