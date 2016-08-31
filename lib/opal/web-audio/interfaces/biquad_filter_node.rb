module WebAudio
  class BiquadFilterNode < AudioNode
    include Native
    include WebAudio::NativeHelpers

    #https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode

    camel_reader :frequency, as: AudioParam
    camel_reader :detune,    as: AudioParam
    camel_reader :q,         as: AudioParam
    camel_reader :gain,      as: AudioParam
    camel_accessor :type

    camel_alias :getFrequencyResponse

  end
end