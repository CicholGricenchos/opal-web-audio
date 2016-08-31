module WebAudio
  class ScriptProcessorNode < AudioNode
    include Native
    include WebAudio::NativeHelpers

    camel_reader :bufferSize
    camel_accessor :onaudioprocess
  end
end