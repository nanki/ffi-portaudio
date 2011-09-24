module FFI::PortAudio::API
  Float32 = 0x1
  Int32 = 0x2
  Int24 = 0x4
  Int16 = 0x8
  Int8  = 0x10
  UInt8 = 0x20
  CustomFormat = 0x10000
  NonInterleaved = 0x80000000

  FormatIsSupported = 0

  FramesPerBufferUnspecified = 0

  NoDevice = -1
  UseHostApiSpecificDeviceSpecification = -2

  NoFlag = 0
  ClipOff = 1
  DitherOff = 2
  NeverDropInput = 4
  PrimeOutputBuffersUsingStreamCallback = 8
  PlatformSpecificFlags = 0xFFFF0000

  InputUnderflow  = 0x01
  InputOverflow   = 0x02
  OutputUnderflow = 0x04
  OutputOverflow  = 0x08
  PrimingOutput   = 0x10
end
