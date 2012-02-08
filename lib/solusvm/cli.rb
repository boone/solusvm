require 'solusvm'
require 'solusvm/cli/base_cli'
require 'solusvm/cli/server_cli'
require 'solusvm/cli/node_cli'
require 'solusvm/cli/general_cli'

module Solusvm
  class Cli < Thor
    register(ServerCli,  'server', 'server <command>', 'Server commands')
    register(NodeCli,    'node', 'node <command>', 'Node commands')
    register(GeneralCli, 'general', 'general <command>', 'General commands')

    desc "version", "Outputs the current program version"
    def version
      say Solusvm::VERSION
    end
  end
end
