class CartPage < BasePage

  checkbox(:collarAndLeash,id:"collar")
  checkbox(:chewToy,id:"toy" )
  checkbox(:travelCarrier,id:"carrier")
  checkbox(:firstVetVisit,id:"vet")
  button(:complete_Adoption, class:"rounded_button")

  def additional(*argument)
    if argument == "Collar & Leash ($19.99)"
      check_collarAndLeash
    elsif argument == "Travel Carrier ($39.99)"
      check_travelCarrier
    elsif argument == "Chew Toy ($8.99)   "
      check_chewToy
    elsif argument == " First Vet Visit ($69.99)"
      check_firstVetVisit
    end
  end

end