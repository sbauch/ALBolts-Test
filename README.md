ALBolts-Test
============

A rubymotion iOS app for testing referer App Links from your app.

Install the app and open it via the custom url scheme:

````
al-test://
````

You should encode your own referer data in the link in order to test that apps which implement the App Link Navigation Protocol can properly recognize your referer data and provide a way for users to return to your app.

See more about App Links and the App Link Navigation Protocol at http://applinks.org