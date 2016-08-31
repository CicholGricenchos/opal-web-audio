module WebAudio
  class DelayNode < AudioNode
    include Native
    include WebAudio::NativeHelpers

    camel_reader :delayTime, as: AudioParam
  end
end