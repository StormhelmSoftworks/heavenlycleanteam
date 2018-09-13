module ApplicationHelper
  def info_card(title, image, desc)




    "<div class='card'>
      <div class='card-image'>
      <img src='#{image}'>

      </div>
      <div class='card-content'>
        <span class='card-title'>#{title}</span>
        <p>#{desc}</p>
        <a href='#{services_list_path}' class='btn btn-secondary'>Learn More</a>
                                                                                                                                              </div>
      </div>
     </div>".html_safe


  end

  def nav_link(text, path)
    link_to(text, path, class: "btn thct-btn-#{request.path == path ? "dark" : "light"}")
  end

  def admin_nav
    if current_user
      render "shared/admin_controls"
    end
  end
end
