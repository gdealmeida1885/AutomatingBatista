class LinksPage < SitePrism::Page
  set_url'/buscaelementos/links'

  element :link_sucesso, "a[href*='/buscaelementos/success']"
  element :link_bad_request, "a[href*='/buscaelementos/badrequest']"
  element :link_page_not_found, "a[href*='/buscaelementos/notfound']"
  element :link_server_error, "a[href*='/buscaelementos/internalservererror']"

  def click_link(link)
    case link
    when 'Ok 200 - Sucess'
      link_sucesso.click
    when 'Erro 400 - Bad Request'
      link_bad_request.click
    when 'Erro 404 - Page not found'
      link_page_not_found.click
    when 'Erro 500 - Internal Server Error'
      link_server_error.click
    end
  end
end