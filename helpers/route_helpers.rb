helpers do
  def title
    if @title
      "#{@title}"
    else
      "Welcome."
    end
  end

  def bits_used
    [
      'bargraph',
      'bend-sensor',
      'bright-led',
      'button',
      'buzzer',
      'coin-battery',
      'dc-motor',
      'dimmer',
      'doubleand',
      'doubleor',
       'fan',
      'fork',
      'inverter',
      'led',
      'light-sensor',
      'light-trigger',
      'light-wire',
      'long-led',
      'motion-trigger',
      'power',
      'pressure-sensor',
      'pulse',
      'rgb-led',
      'roller-switch',
      'servo-motor',
      'slide-dimmer',
      'slide-switch',
      'sound-trigger',
      'temperature-sensor',
      'timeout',
      'toggle-switch',
      'usb-power',
      'uv-led',
      'vibration-motor',
      'wire'
    ]
  end
end
