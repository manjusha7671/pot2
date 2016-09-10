class Homepagep < BasePage


  divs(:puppyname,class:"name")
  buttons(:viewDetails,class:"rounded_button")
  #divs(:typegender, class:"details")

  def viewdetailsAdopt(name)
    index = puppy_name.index(name)
    viewDetails_elements[index].click
  end
private
  def puppy_name
    puppyname_elements.map(&:text)
  end

end