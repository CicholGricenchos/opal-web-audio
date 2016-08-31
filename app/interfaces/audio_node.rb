module WebAudio
  class AudioNode
    include Native
    include WebAudio::NativeHelpers

    #https://developer.mozilla.org/en-US/docs/Web/API/AudioNode

    camel_reader :context
    camel_reader :numberOfInputs
    camel_reader :numberOfOutputs
    camel_accessor :channelCount
    camel_accessor :channelCountMode
    camel_accessor :channelInterpretation

    camel_alias :connect
    camel_alias :disconnect

  end
end