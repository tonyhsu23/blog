module ApplicationHelper
  def set_header_image  
    controller = params[:controller]
    action = params[:action]  
    if controller == 'users' || controller == 'sessions'
      '/assets/contact-bg.jpg'
    elsif controller == 'posts' && (action == 'index' || action == 'new')
      '/assets/home-bg.jpg'
    elsif controller == 'abouts'
      '/assets/about-bg.jpg'
    else
      nil
    end
  end

  def set_header_title
    (params[:controller] == 'abouts') ? "Tony Hsu" : "Tony's Blog"
  end

  def set_header_content
    (params[:controller] == 'abouts') ? "My name is Tony Hsu." : "A Clean Blog Theme by Start Bootstrap"
  end 
end
