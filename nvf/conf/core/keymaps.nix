{

  config.vim.keymaps = 
  [
    # The next two keymaps are for sharing system and vim's clipboard 
    # when yanking/pasting  
    # TODO: see todo.md
    # XXX: Commented because it doesnt work well
    # {
    #   desc = "Copy to system clipboard";
    #   mode = [ "n" "v" "x" ];
    #   key = "y";
    #   action = "\"+y";
    # }   
    # {
    #   desc = "Paste from system clipboard";
    #   mode = [ "n" "v" "x" ];
    #   key = "p";
    #   action = "\"+p";
    # }   
    
    
    {
      desc = "Hold selection after tabbing with '>'";
      mode = [ "v" "x" ];
      key = ">";
      action = ">gv";
    }   
    {
      desc = "Hold selection after untabbing with '<'";
      mode = [ "v" "x" ];
      key = "<";
      action = "<gv";
    }   

    # {
    #   desc = "";
    #   mode = "n";
    #   key = "<leader>e";
    #   action = "<cmd>Neotree toggle<CR>";
    # }   
  ];

}
