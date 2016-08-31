module WebAudio
  class AnalyserNode < AudioNode
    include Native
    include WebAudio::NativeHelpers

    #https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode

    camel_accessor :fftSize
    camel_accessor :minDecibels
    camel_accessor :maxDecibels
    camel_accessor :smoothingTimeConstant

    camel_reader :frequencyBinCount

    camel_alias :getFloatFrequencyData
    camel_alias :getByteFrequencyData
    camel_alias :getFloatTimeDomainData
    camel_alias :getByteTimeDomainData

  end
end