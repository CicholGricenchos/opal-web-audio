module WebAudio
  class WaveSharperNode < AudioNode
    include Native
    include WebAudio::NativeHelpers

    camel_accessor :curve#, as: Float32Array
    camel_accessor :oversample
  end
end