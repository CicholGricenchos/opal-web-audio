module WebAudio
  class ConvolverNode < AudioNode
    include Native
    include WebAudio::NativeHelpers

    camel_accessor :buffer, as: AudioBuffer
    camel_accessor :normalize
  end
end