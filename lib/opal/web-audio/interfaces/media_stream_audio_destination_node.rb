module WebAudio
  class MediaStreamAudioDestinationNode < AudioNode
    include Native
    include WebAudio::NativeHelpers

    camel_accessor :stream#, as: MediaStream
  end
end