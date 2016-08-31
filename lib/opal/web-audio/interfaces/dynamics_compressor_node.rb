module WebAudio
  class DynamicsCompressorNode < AudioNode
    include Native
    include WebAudio::NativeHelpers

    camel_reader :threshold, as: AudioParam
    camel_reader :knee,      as: AudioParam
    camel_reader :ratio,     as: AudioParam
    camel_reader :reduction
    camel_reader :attack,    as: AudioParam
    camel_reader :release,   as: AudioParam
  end
end