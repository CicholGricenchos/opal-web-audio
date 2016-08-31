module WebAudio
  class AudioDestinationNode < AudioNode
    include Native
    include WebAudio::NativeHelpers

    #https://developer.mozilla.org/en-US/docs/Web/API/AudioDestinationNode

    camel_accessor :maxChannelCount
  end
end