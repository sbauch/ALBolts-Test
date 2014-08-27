class NoRefererLayout < MotionKit::Layout
  view :more_info

  def layout
    root :root_view do
      add UILabel, :label
      add UILabel, :explainer
      add UILabel, :more_info
    end
  end

  def root_view_style
    backgroundColor '#f8f8f8'.uicolor

  end

  def label_style
    text 'No referer data!'
    font UIFont.fontWithName('Questrial-Regular', size: 28)
    size_to_fit
    center ['50%', '30%']
    text_alignment UITextAlignmentCenter
    text_color '#34a9da'.uicolor
  end

  def explainer_style
    frame [[10,0],[300, 200]]
    text 'Test your app link Return to Referer protocol implementation by opening this app with an App Link with the scheme al-test:// with encoded referer data.'
    font UIFont.fontWithName('Questrial-Regular', size: 20)
    center ['50%', '50%']
    text_alignment UITextAlignmentCenter
    text_color '#000'.uicolor
    numberOfLines 0

  end

  def more_info_style
    frame from_bottom(size: ['80%', 40])
    text 'For more, see the documentation at AppLinks.org'
    font UIFont.fontWithName('Questrial-Regular', size: 14)
    text_alignment UITextAlignmentCenter
    text_color '#000'.uicolor
    userInteractionEnabled true
    numberOfLines 2

  end


end