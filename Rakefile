# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  app.name = 'AL Test'
  app.fonts = ['Questrial-Regular.ttf']

  app.pods do
    pod 'Bolts'
  end

  app.icons = ['logo120.png', 'logo80.png', 'logo58.png']

  app.info_plist['CFBundleURLTypes'] = [{'CFBundleURLName' => 'com.sambauch.applinks-test', 'CFBundleURLSchemes' => ['al-test'] }]

end
