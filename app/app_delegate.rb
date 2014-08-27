class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)

    # Mixpanel.sharedInstanceWithToken('bd1ba2f3d1ee14a6f0fdc0ee64a1b85f')
    #
    # NSNotificationCenter.defaultCenter.addObserverForName(BFMeasurementEventNotificationName, object:nil, queue:nil, usingBlock: proc {|note|
    #   event = note.userInfo;
    #   eventData = event[BFMeasurementEventArgsKey]
    #   mp = Mixpanel.sharedInstance
    #   mp.track(event['event_name'], properties: eventData)
    # })

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible
    @main = MainController.alloc.init
    @window.rootViewController = @main


    true
  end

  def application(application, openURL:url, sourceApplication:sourceApplication,  annotation:annotation)

    parsedUrl = BFURL.URLForRenderBackToReferrerBarURL(url)
    app_link_hash = parsedUrl.appLinkData
    @app_link_referer = parsedUrl.appLinkReferer

    if @app_link_referer
      @main.showReferer(@app_link_referer, app_link_hash['referer_app_link'])
    end
  end
end
