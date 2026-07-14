{
  config.vim = 
  {
    filetree.neo-tree.enable = true;
  };

  config.vim.keymaps = 
  [
    {
      desc = "Toggle Neotree";
      mode = "n";
      key = "<leader>e";
      action = "<cmd>Neotree toggle<CR>";
    }   
  ];
}
