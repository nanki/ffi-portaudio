module FFI::PortAudio::API
  extend FFI::Library

  enum :PaErrorCode, [
    :paNoError, 0,
    :paNotInitialized, -10000,
    :paUnanticipatedHostError,
    :paInvalidChannelCount,
    :paInvalidSampleRate,
    :paInvalidDevice,
    :paInvalidFlag,
    :paSampleFormatNotSupported,
    :paBadIODeviceCombination,
    :paInsufficientMemory,
    :paBufferTooBig,
    :paBufferTooSmall,
    :paNullCallback,
    :paBadStreamPtr,
    :paTimedOut,
    :paInternalError,
    :paDeviceUnavailable,
    :paIncompatibleHostApiSpecificStreamInfo,
    :paStreamIsStopped,
    :paStreamIsNotStopped,
    :paInputOverflowed,
    :paOutputUnderflowed,
    :paHostApiNotFound,
    :paInvalidHostApi,
    :paCanNotReadFromACallbackStream,
    :paCanNotWriteToACallbackStream,
    :paCanNotReadFromAnOutputOnlyStream,
    :paCanNotWriteToAnInputOnlyStream,
    :paIncompatibleStreamHostApi,
    :paBadBufferPtr]

  enum :PaHostApiTypeId, [
    :paInDevelopment, :paDirectSound, :paMME, :paASIO, :paSoundManager, :paCoreAudio,
    :paOSS, 7,
    :paALSA, :paAL, :paBeOS, :paWDMKS, :paJACK, :paWASAPI, :paAudioScienceHPI]

  enum :PaStreamCallbackResult, [:paContinue, :paComplete, :paAbort]
end
