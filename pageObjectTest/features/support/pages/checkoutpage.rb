class CheckoutPagep < BasePage
  textarea(:ordername,id:"order_name")
  textarea(:address,id:"order_address")
  textarea(:email,id:"order_email")
  select_list(:paytype,id:"order_pay_type")
  button(:placeorder,type:"submit")

end