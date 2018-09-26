class LinksPage < SitePrism::Page
  set_url'/buscaelementos/links'

  element :link_sucesso, "a[href*='/buscaelementos/success']"
  element :link_bad_request, "a[href*='/buscaelementos/badrequest']"
  element :link_page_not_found, "a[href*='/buscaelementos/notfound']"
  element :link_server_error, "a[href*='/buscaelementos/internalservererror']"

  def click_link(element)
    element.click
  end
end