class Device
  def press_home
    %x( adb shell input keyevent KEYCODE_HOME )
  end

  def current_activity
    %x( adb shell dumpsys activity activities | grep mResumedActivity )
  end

  def android_version
    %x( adb shell getprop ro.build.version.release )
  end
end
