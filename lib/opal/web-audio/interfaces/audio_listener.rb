module WebAudio
  class AudioListener
    include Native
    include WebAudio::NativeHelpers

    #https://developer.mozilla.org/en-US/docs/Web/API/AudioListener

    camel_reader :positionX, as: AudioParam
    camel_reader :positionY, as: AudioParam
    camel_reader :positionZ, as: AudioParam
    camel_reader :forwardX,  as: AudioParam
    camel_reader :forwardY,  as: AudioParam
    camel_reader :forwardZ,  as: AudioParam
    camel_reader :upX,       as: AudioParam
    camel_reader :upY,       as: AudioParam
    camel_reader :upZ,       as: AudioParam

    camel_alias :setOrientation

  end
end