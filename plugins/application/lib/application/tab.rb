module Redcar
  class Tab
    include Redcar::Model
    include Redcar::Observable
    
    def initialize(notebook)
      @notebook = notebook
    end
    
    # Focus the tab within the notebook, and gives the keyboard focus to the 
    # contents of the tab, if appropriate.
    #
    # Events: focus
    def focus
      notify_listeners(:focus)
    end
  end
end