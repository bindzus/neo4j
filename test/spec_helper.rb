# 
# Helper methods for specs
#

require 'fileutils'  

DB_LOCATION = 'var/neo'

def start
  FileUtils.rm_r DB_LOCATION if File.directory?(DB_LOCATION)
  Neo4j::Neo.instance.start(DB_LOCATION)
end


def stop
  Neo4j::Neo.instance.stop
  FileUtils.rm_r DB_LOCATION if File.directory?(DB_LOCATION)
end