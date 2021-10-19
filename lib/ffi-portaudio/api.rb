module FFI::PortAudio::API
  extend FFI::Library

  ffi_lib ['portaudio', 'libportaudio.so.2', 'libportaudio', 'libportaudio-2']

  callback :PaStreamCallback, [:pointer, :pointer, :ulong, PaStreamCallbackTimeInfo.in, :ulong, :pointer], :PaStreamCallbackResult
  callback :PaStreamFinishedCallback, [:pointer], :void

  attach_function :Pa_GetVersion, [], :int
  attach_function :Pa_GetVersionText, [], :string
  attach_function :Pa_GetErrorText, [:PaErrorCode], :string
  attach_function :Pa_Initialize, [], :PaErrorCode
  attach_function :Pa_Terminate, [], :PaErrorCode

  attach_function :Pa_GetHostApiCount, [], :int
  attach_function :Pa_GetDefaultHostApi, [], :int
  attach_function :Pa_GetHostApiInfo, [:int], PaHostApiInfo.ptr
  attach_function :Pa_HostApiTypeIdToHostApiIndex, [:PaHostApiTypeId], :int
  attach_function :Pa_HostApiDeviceIndexToDeviceIndex, [:int, :int], :int

  attach_function :Pa_GetLastHostErrorInfo, [], PaHostErrorInfo.ptr
  attach_function :Pa_GetDeviceCount, [], :int
  attach_function :Pa_GetDefaultInputDevice, [], :int
  attach_function :Pa_GetDefaultOutputDevice, [], :int
  attach_function :Pa_GetDeviceInfo, [:int], PaDeviceInfo.ptr
  attach_function :Pa_IsFormatSupported, [PaStreamParameters.in, PaStreamParameters.in, :double], :PaErrorCode

  attach_function :Pa_OpenStream, [:pointer, PaStreamParameters.in, PaStreamParameters.in, :double, :ulong, :ulong, :PaStreamCallback, :pointer], :PaErrorCode
  attach_function :Pa_OpenDefaultStream, [:pointer, :PaErrorCode, :PaErrorCode, :ulong, :double, :ulong, :PaStreamCallback, :pointer], :PaErrorCode
  attach_function :Pa_CloseStream, [:pointer], :PaErrorCode

  attach_function :Pa_SetStreamFinishedCallback, [:pointer, :PaStreamFinishedCallback], :PaErrorCode

  attach_function :Pa_StartStream, [:pointer], :PaErrorCode
  attach_function :Pa_StopStream, [:pointer], :PaErrorCode
  attach_function :Pa_AbortStream, [:pointer], :PaErrorCode

  attach_function :Pa_IsStreamStopped, [:pointer], :PaErrorCode
  attach_function :Pa_IsStreamActive, [:pointer], :PaErrorCode

  attach_function :Pa_GetStreamInfo, [:pointer], PaStreamInfo.ptr
  attach_function :Pa_GetStreamTime, [:pointer], :double
  attach_function :Pa_GetStreamCpuLoad, [:pointer], :double
  attach_function :Pa_GetStreamReadAvailable, [:pointer], :long
  attach_function :Pa_GetStreamWriteAvailable, [:pointer], :long

  attach_function :Pa_ReadStream, [:pointer, :pointer, :ulong], :PaErrorCode
  attach_function :Pa_WriteStream, [:pointer, :pointer, :ulong], :PaErrorCode

  attach_function :Pa_GetSampleSize, [:ulong], :PaErrorCode

  attach_function :Pa_Sleep, [:long], :void
end
