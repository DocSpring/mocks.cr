require "./registry"

module Mocks
  class Receive(T)
    @args : T
    @method_name : String
    getter args, method_name

    def initialize(@method_name, @args : T)
    end

    def and_return(value)
      Message.new(self, value)
    end
  end
end
