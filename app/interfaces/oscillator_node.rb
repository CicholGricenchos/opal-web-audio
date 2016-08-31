module WebAudio
  class OscillatorNode < AudioNode
    include Native
    include WebAudio::NativeHelpers

    #https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode

    camel_accessor :type
    camel_alias :frequency, as: AudioParam
    camel_alias :detune,  as: AudioParam

    camel_alias :start
    camel_alias :stop
    camel_alias :setPeriodicWave

    camel_accessor :onended
  end
end