module Puppet::Parser::Functions
    newfunction(:homedir, :type => :rvalue ) do |args|
          raise ArgumentError, 'Wrong number of arguments' if args.length != 1
              location = args[0]
              Dir.entries(location).join(' ')
          end
end
