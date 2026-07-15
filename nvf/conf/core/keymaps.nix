{

  config.vim.keymaps = 
  [
    # The next two keymaps are for sharing system and vim's clipboard 
    # when yanking/pasting  
    {
      desc = "Copy to system clipboard";
      mode = [ "n" "v" "x" ];
      key = "y";
      action = "\"+y";
    }   
    {
      desc = "Paste from system clipboard";
      mode = [ "n" "v" "x" ];
      key = "p";
      action = "\"+p";
    }   
    

    # {
    #   desc = "";
    #   mode = "n";
    #   key = "<leader>e";
    #   action = "<cmd>Neotree toggle<CR>";
    # }   
  ];

}
