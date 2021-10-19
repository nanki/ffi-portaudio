require './lib/ffi-portaudio/version'
Gem::Specification.new do |s|
  s.name = "ffi-portaudio"
  s.version = FFI::PortAudio::VERSION

  s.authors = ["nanki"]
  s.summary = "Ruby bindings for PortAudio."
  s.description = "Ruby bindings for PortAudio."
  s.email = "nanki@dotswitch.net"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    "Gemfile",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "examples/spectrum.rb",
    "ffi-portaudio.gemspec",
    "lib/ffi-portaudio.rb",
    "lib/ffi-portaudio/api.rb",
    "lib/ffi-portaudio/const.rb",
    "lib/ffi-portaudio/enum.rb",
    "lib/ffi-portaudio/stream.rb",
    "lib/ffi-portaudio/struct.rb",
    "lib/ffi-portaudio/version.rb",
  ]
  s.homepage = "http://github.com/nanki/ffi-portaudio"
  s.license = "MIT"
  s.require_paths = ["lib"]
  s.add_dependency "ffi"

  s.metadata['msys2_mingw_dependencies'] = 'portaudio'
end

