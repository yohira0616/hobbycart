module ApplicationHelper

  def datetime_format(datetime)
    datetime.strftime('%Y年%m月%d日 %H:%M:%S')
  end
end
