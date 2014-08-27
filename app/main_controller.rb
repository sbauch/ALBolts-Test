class MainController < UIViewController

  def viewDidLoad
    if @referer
      @layout = HasRefererLayout.new
    else
      @layout = NoRefererLayout.new
      more_info = @layout.more_info
      more_info.on_tap{
        'http://applinks.org'.nsurl.open
      }
    end

    self.view = @layout.view

  end

  def showReferer(referer, referer_hash)
    @referer = referer
    @layout = HasRefererLayout.new
    self.view = @layout.view

    @layout.app_name.text = referer_hash['app_name']
    @layout.return.text = referer_hash['url']


    returnToRefererView                 = BFAppLinkReturnToRefererView.alloc.initWithFrame([[0,0], [320,80]])
    returnToRefererView.delegate        = self
    @returnToRefererController          = BFAppLinkReturnToRefererController.alloc.init
    @returnToRefererController.view     = returnToRefererView

    @returnToRefererController.showViewForRefererAppLink(referer)
    self.view.addSubview(returnToRefererView)
  end

  def returnToRefererViewDidTapInsideCloseButton(view)
    @returnToRefererController.closeViewAnimated(true)
    navigationController.setNavigationBarHidden(false, animated:true)
  end

  def returnToRefererViewDidTapInsideLink(view, link:link)
    @returnToRefererController.openRefererAppLink(link)
    @returnToRefererController.closeViewAnimated(false)
    navigationController.setNavigationBarHidden(false, animated:false)
  end

end