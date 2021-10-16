require 'ffi'

module FFI::PortAudio
  require 'ffi-portaudio/version'
  require 'ffi-portaudio/enum'
  require 'ffi-portaudio/struct'
  require 'ffi-portaudio/const'
  require 'ffi-portaudio/api'

  autoload :Stream, 'ffi-portaudio/stream'
end
