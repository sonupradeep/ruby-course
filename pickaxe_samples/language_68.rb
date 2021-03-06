#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  CONST = "outer"
  module Mod
    CONST = 1
    def Mod.method1    # module method
      CONST + 1
    end
  end
  module Mod::Inner
    def (Mod::Inner).method2
      CONST + " scope"
    end
  end
  Mod::CONST
  Mod.method1
  Mod::Inner::method2
