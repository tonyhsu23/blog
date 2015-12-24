module ApplicationHelper
  def set_header_image  
    controller = params[:controller]
    action = params[:action]  
    if controller == 'users' || controller == 'sessions'
      image_path "contact-bg.jpg"
    elsif controller == 'posts' && (action == 'index' || action == 'new')
      image_path "ggb.jpg"
    elsif controller == 'abouts'
      image_path "me.jpg"
    else
      nil
    end
  end

  def set_header_title
    (params[:controller] == 'abouts') ? "Tony Hsu" : "Tony's Blog"
  end

  def set_header_content
    about_content = simple_format("I'm a Web Developer. \n Passionate About Technology \n Ruby on Rails and Photography")
    blog_content = simple_format("Daily Life and Technology \n Follow me on Medium")
    (params[:controller] == 'abouts') ? about_content : blog_content
  end 
end
