module WebAudio
  class PannerNode < AudioNode
    include Native
    include WebAudio::NativeHelpers

    #https://developer.mozilla.org/en-US/docs/Web/API/PannerNode

    camel_accessor :coneInnerAngle
    camel_accessor :coneOuterAngle
    camel_accessor :coneOuterGain
    camel_accessor :distanceModel
    camel_accessor :maxDistance
    camel_accessor :orientationX, as: AudioParam
    camel_accessor :orientationY, as: AudioParam
    camel_accessor :orientationZ, as: AudioParam
    camel_accessor :panningModel
    camel_accessor :positionX,    as: AudioParam
    camel_accessor :positionY,    as: AudioParam
    camel_accessor :positionZ,    as: AudioParam
    camel_accessor :refDistance
    camel_accessor :rolloffFactor

    camel_alias :setPosition
    camel_alias :setOrientation
  end
end