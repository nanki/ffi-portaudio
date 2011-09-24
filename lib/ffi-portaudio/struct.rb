module FFI::PortAudio::API
  class PaHostApiInfo < FFI::Struct
    layout(
      :structVersion, :int,
      :type, :PaHostApiTypeId,
      :name, :string,
      :deviceCount, :int,
      :defaultInputDevice, :int,
      :defaultOutputDevice, :int
    )
  end

  class PaHostErrorInfo < FFI::Struct
    layout(
      :hostApiType, :PaHostApiTypeId,
      :errorCode, :long,
      :errorText, :string
    )
  end

  class PaDeviceInfo < FFI::Struct
    layout(
      :structVersion, :int,
      :name, :string,
      :hostApi, :int,
      :maxInputChannels, :int,
      :maxOutputChannels, :int,
      :defaultLowInputLatency, :double,
      :defaultLowOutputLatency, :double,
      :defaultHighInputLatency, :double,
      :defaultHighOutputLatency, :double,
      :defaultSampleRate, :double
    )
  end

  class PaStreamParameters < FFI::Struct
    layout(
      :device, :int,
      :channelCount, :int,
      :sampleFormat, :ulong,
      :suggestedLatency, :double,
      :hostApiSpecificStreamInfo, :pointer
    )
  end

  class PaStreamCallbackTimeInfo < FFI::Struct
    layout(
      :inputBufferAdcTime, :double,
      :currentTime, :double,
      :outputBufferDacTime, :double
    )
  end

  class PaStreamInfo < FFI::Struct
    layout(
      :structVersion, :int,
      :inputLatency, :double,
      :outputLatency, :double,
      :sampleRate, :double
    )
  end
end
