module WebAudio
  class AudioParam
    include Native
    include WebAudio::NativeHelpers

    #https://developer.mozilla.org/en-US/docs/Web/API/AudioParam

    camel_reader :defaultValue
    camel_reader :maxValue
    camel_reader :minValue
    camel_accessor :value

    camel_alias :setValueAtTime
    camel_alias :linearRampToValueAtTime
    camel_alias :exponentialRampToValueAtTime
    camel_alias :setTargetAtTime
    camel_alias :setValueCurveAtTime
    camel_alias :cancelScheduledValues
  end
end