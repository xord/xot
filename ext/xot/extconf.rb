# -*- coding: utf-8 -*-


%w[.]
  .map  {|s| File.expand_path "../../../#{s}/lib", __FILE__}
  .each {|s| $:.unshift s if !$:.include?(s) && File.directory?(s)}

require 'mkmf'
require 'xot/extconf'
require 'xot/module'


Xot::ExtConf.new Xot do
  setup do
    headers << 'boost/noncopyable.hpp' << 'ruby.h'
  end

  dir_config 'boost'
  create_makefile 'xot/tester'
end
