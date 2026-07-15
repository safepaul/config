{
  inputs = 
  {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nvf.url = "github:notashelf/nvf";
  };

  outputs = {nixpkgs, self, ...} @ inputs: 
  {
    packages.x86_64-linux = 
    {
      # Set the default package to the wrapped instance of Neovim.
      # This will allow running your Neovim configuration with
      # `nix run` and in addition, sharing your configuration with
      # other users in case your repository is public.
      default =
      (
        inputs.nvf.lib.neovimConfiguration 
        {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;
          modules = 
          [
            "${self}/conf/misc/kitty_double_input_fix.nix"

            "${self}/conf/core/misc.nix"
            "${self}/conf/core/keymaps.nix"
            "${self}/conf/core/theme.nix"

            "${self}/conf/plugins/bufferline.nix"
            "${self}/conf/plugins/neo-tree.nix"
            "${self}/conf/plugins/mini/mini_statusline.nix"
            "${self}/conf/plugins/render-markdown-nvim.nix"
          ];
        }
      ).neovim;
    };
  };
}
