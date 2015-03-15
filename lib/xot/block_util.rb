# -*- coding: utf-8 -*-


module Xot


  module BlockUtil

    def instance_eval_or_block_call (recv, *args, &block)
      if block.arity == 0
        recv.instance_eval &block
      else
        block.call recv, *args
      end
    end

    extend self

  end# BlockUtil


end# Xot
