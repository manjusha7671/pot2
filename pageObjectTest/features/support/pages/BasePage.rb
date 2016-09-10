class BasePage
  include PageObject

  page_url FigNewton.baseurl

  a(:adoptapuppy,text: "Adopt a Puppy")

end