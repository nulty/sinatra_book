# file loading order important for cascading routes
Dir.glob("Chapter*/**").sort.each { |file| require_relative file  }
