require 'bundler/setup'
Bundler.require
require_all 'lib'
<<<<<<< HEAD
ActiveRecord::Base.logger.level = 1
MainMenu.init
=======
ActiveRecord::Base.logger = nil
MainMenu.init
>>>>>>> master
