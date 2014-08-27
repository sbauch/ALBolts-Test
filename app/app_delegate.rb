class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)

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
