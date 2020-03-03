# frozen_string_literal: true

require './fileext/executor'

pp FileExt::Executor.new.read
pp FileExt::Executor.new.exec
