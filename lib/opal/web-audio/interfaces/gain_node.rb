module WebAudio
  class GainNode < AudioNode
    include Native
    include WebAudio::NativeHelpers

    camel_reader :gain, as: AudioParam
  end
end