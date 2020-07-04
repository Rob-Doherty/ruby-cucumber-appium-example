require 'cucumber'
require 'appium_lib'

IOS_APP = './apps/ios/example.app'
ANDROID_APP = './apps/android/example.apk'

IOS_CAPABILITIES = {
    platformName:       'iOS',
    platformVersion:    '13.3',
    deviceName:         'iPhone 11 Pro',
    app:                IOS_APP,
    automationName:     'XCUITest'
}

ANDROID_CAPABILITIES = {
    platformName:       'Android',
    platformVersion:    '10.0',
    deviceName:         'Android Emulator',
    avd:                'Pixel_3_API_29',
    app:                ANDROID_APP,
    automationName:     'UiAutomator2',
    appWaitActivity:    'com.talksport.tsliveen.*',
    autoAcceptAlerts:   'true'
}

def testing_ios?
    platform = ENV['platform']&.downcase
    if platform != 'ios' && platform != 'android'
        raise 'Missing a valid "platform" paramater. Needs to be either "platform=ios" or "platform=android".'
    end
    platform == 'ios' ? true : false
end


desired_caps = {
    caps: testing_ios? ? IOS_CAPABILITIES : ANDROID_CAPABILITIES,
    appium_lib: {
        wait: 30
    }
}

Before do
    $driver = Appium::Driver.new(desired_caps, false)
end

After do
    $driver.quit_driver
end
