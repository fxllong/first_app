module ApplicationHelper

  # 根据每页的显示不同的标题
  def full_title(page_title)
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?  #判断一下页面标题是否为空
      base_title  #如果为空，就返回基本标题
    else
      "#{base_title} | #{page_title}" #否则就是完整的标题
    end
  end

end