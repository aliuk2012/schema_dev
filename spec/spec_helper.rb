require 'schema_dev/config'
require 'tmpdir'

def get_config(data)
  Dir.mktmpdir do |dir|
    Dir.chdir(dir) do
      Pathname.new(SchemaDev::CONFIG_FILE).write data.to_yaml
      SchemaDev::Config.load
    end
  end
end
