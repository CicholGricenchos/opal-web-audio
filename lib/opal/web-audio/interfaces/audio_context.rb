module WebAudio
  class AudioContext
    include Native
    include WebAudio::NativeHelpers

    #https://developer.mozilla.org/en-US/docs/Web/API/AudioContext

    def initialize native = nil
      if native
        super native
      else
        super `new window.AudioContext`
      end
    end

    camel_alias :currentTime
    camel_alias :destination,                  as: AudioDestinationNode
    camel_alias :listener,                     as: AudioListener
    camel_alias :sampleRate
    camel_alias :state

    camel_accessor :onstatechange

    camel_alias :close
    camel_alias :createBuffer,                 as: AudioBuffer
    camel_alias :createBufferSource,           as: AudioBufferSourceNode
    camel_alias :createMediaElementSource,     as: MediaElementAudioSourceNode
    camel_alias :createMediaStreamSource,      as: MediaStreamAudioSourceNode
    camel_alias :createMediaStreamDestination, as: MediaStreamAudioDestinationNode
    camel_alias :createScriptProcessor,        as: ScriptProcessorNode
    camel_alias :createStereoPanner,           as: StereoPannerNode
    camel_alias :createAnalyser,               as: AnalyserNode
    camel_alias :createBiquadFilter,           as: BiquadFilterNode
    camel_alias :createChannelMerger,          as: ChannelMergerNode
    camel_alias :createChannelSplitter,        as: ChannelSplitterNode
    camel_alias :createConvolver,              as: ConvolverNode
    camel_alias :createDelay,                  as: DelayNode
    camel_alias :createDynamicsCompressor,     as: DynamicsCompressorNode
    camel_alias :createGain,                   as: GainNode
    camel_alias :createIIRFilter,              as: IIRFilterNode
    camel_alias :createOscillator,             as: OscillatorNode
    camel_alias :createPanner,                 as: PannerNode
    camel_alias :createPeriodicWave,           as: PeriodicWave
    camel_alias :createWaveSharper,            as: WaveSharperNode
    #camel_alias :createAudioWorker,            as: AudioWorkerNode
    camel_alias :decodeAudioData,              as: AudioBuffer
    camel_alias :resume
    camel_alias :suspend
  end
end