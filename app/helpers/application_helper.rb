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
end
