class HasRefererLayout < MotionKit::Layout
  view :app_name
  view :return

  def layout
    root :root_view do
      add UILabel, :label
      add UILabel, :app_name_label
      add UILabel, :app_name
      add UILabel, :return_label
      add UILabel, :return
    end
  end

  def root_view_style
    backgroundColor '#f8f8f8'.uicolor
  end

  def label_style
    text 'Valid referer data!'
    font UIFont.fontWithName('Questrial-Regular', size: 28)
    size_to_fit
    center ['50%', '30%']
    text_alignment UITextAlignmentCenter
    text_color '#34a9da'.uicolor
  end

  def app_name_label_style
    text 'App Name'
    font UIFont.fontWithName('Questrial-Regular', size: 14)
    text_alignment UITextAlignmentCenter
    size_to_fit
    center ['50%', '50%']
  end

  def app_name_style
    frame below(:app_name_label, margin: 12, size: ['100%', '24'])
    x 0
    font UIFont.fontWithName('Questrial-Regular', size: 22)
    text_alignment UITextAlignmentCenter
    text_color '#34a9da'.uicolor
  end

  def return_label_style
    frame below(:app_name, margin: 18, size: ['100%', '16'])
    x 0
    text 'Return URL'
    font UIFont.fontWithName('Questrial-Regular', size: 14)
    text_alignment UITextAlignmentCenter
  end

  def return_style
    frame below(:return_label, margin: 12, size: ['100%', '24'])
    x 0
    font UIFont.fontWithName('Questrial-Regular', size: 22)
    text_alignment UITextAlignmentCenter
    text_color '#34a9da'.uicolor
  end

end