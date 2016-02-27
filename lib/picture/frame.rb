require "picture/frame/version"
require 'logger'

module Picture
  module Frame
    # def initialize(logger, width = 50)
      # # @logger = defined?(Rails) ? Rails.logger : Logger.new(STDOUT)
      # # @width = width
    # end

    def self.frame(text, width = 50)
      inputLocation = 3
      output = ["._____________________.",
                "| ._________________. |",
                "| |                 | |",
                "| ._________________. |",
                "|_____________________|"]
      output = output.insert(inputLocation, frameWrap(text, width))
    end

    def self.frameWrap(text, width = 75)
      left = "| | "
      right = " | |"
      totalLength = left.length + right.length + text.length
      numSpaces = width - totalLength
      return "break up text" if totalLength > width
      return left + text + " "*numSpaces + right
    end
  end
end
