require 'tempfile'
require 'base64'

class Spiped
  VERSION = "1.4.1"
  BASE = File.expand_path File.join(File.dirname(__FILE__), "..", "ext", "spiped" )

  SPIPE = File.join(BASE, "spipe", "spipe" )
  SPIPED = File.join(BASE, "spiped", "spiped" )

  #
  # 1. Write the provided base64-encoded key to disk
  # 2. Spawn spiped to send plaintext received on `source` encrypted to spiped
  #    running at `target`
  #
  def self.spawn_encryptor( source, target, key, verbose = false )
    keyfile = Tempfile.new("spiped")
    keyfile.write Base64.decode64(key)
    keyfile.close
    cmd = [SPIPED, '-e', '-s', source, '-t', target, '-k', keyfile.path, '-D']
    if verbose
      $stdout.puts "Running #{cmd.join(' ')}"
    end
    system *cmd
  end
end
