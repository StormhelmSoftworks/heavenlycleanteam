module ApplicationHelper
  def info_card(title, image, desc)




    "<div class='card'>
      <div class='card-image'>
      <img src='#{image}'>

      </div>
      <div class='card-content'>
        <span class='card-title'>#{title}</span>
        <a href='#{services_list_path}'>>></a>
        <p>#{desc}</p>
                                                                                                                                              </div>
      </div>
     </div>".html_safe


  end
end
