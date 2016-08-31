module WebAudio
  class AudioBufferSourceNode < AudioNode
    include Native
    include WebAudio::NativeHelpers

    #https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode

    camel_reader :buffer, as: AudioBuffer
    camel_reader :detune, as: AudioParam
    camel_accessor :loop
    camel_accessor :loopStart
    camel_accessor :loopEnd
    camel_reader :playbackRate, as: AudioParam

    camel_accessor :onended

    camel_alias :start
    camel_alias :stop
  end
end