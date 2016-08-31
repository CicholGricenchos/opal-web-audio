module WebAudio
  class AudioBuffer
    include Native
    include WebAudio::NativeHelpers

    #https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer

    camel_reader :sampleRate
    camel_reader :length
    camel_reader :duration
    camel_reader :numberOfChannels

    camel_alias :getChannelData#, as: Float32Array
    camel_alias :copyFromChannel
    camel_alias :copyToChannel
  end
end