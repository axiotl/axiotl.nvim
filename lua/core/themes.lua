local function make_transparent()
  local hl_groups = {
    'floatborder',
    'TelescopeBorder',
    'CursorLineNr',
    'LineNr',
    'SignColumn',
    'FoldColumn',
    'GitSignsAdd',
    'GitSignsChange',
    'GitSignsDelete',
  }
  for _, group in ipairs(hl_groups) do
    vim.api.nvim_set_hl(0, group, {
      bg = 'none',
      fg = '#ffffff',
    })
  end
end

local function rose_pine()
  local ok, rose_pine_theme = pcall(require, 'rose-pine')
  if not ok then
    return
  end
  rose_pine_theme.setup {
    variant = 'moon',
    dark_variant = 'moon',
    disable_background = true,
    disable_float_background = true,
  }
  vim.cmd.colorscheme 'rose-pine'

  vim.api.nvim_set_hl(0, 'BlinkCmpLabel', {
    fg = '#D9D9D9',
    bg = 'none',
    bold = false, -- or other styles
    italic = false,
    underline = false,
  })

  vim.api.nvim_set_hl(0, 'BlinkCmpMenuSelection', {
    fg = '#FFAF87',
    bg = 'none',
    bold = true, -- or other styles
    italic = true,
    underline = true,
  })

  make_transparent()
end

local function catpuccin()
  local ok, catppuccin_theme = pcall(require, 'catppuccin')
  if not ok then
    return
  end
  catppuccin_theme.setup {
    flavour = 'mocha',
    transparent_background = true,
    integrations = {
      telescope = true,
      gitsigns = true,
      cmp = true,
      which_key = true,
      mason = true,
      treesitter = true,
    },
  }
  vim.cmd.colorscheme 'catppuccin'
end

local function tokyonight()
  local ok, tokyonight_theme = pcall(require, 'tokyonight')
  if not ok then
    return
  end
  tokyonight_theme.setup {
    style = 'night',
    transparent = true,
    terminal_colors = true,
    styles = {
      sidebars = 'transparent',
      floats = 'transparent',
    },
  }
  vim.cmd.colorscheme 'tokyonight'
end

local function github_light()
  local is_tinker = vim.env.TINKER_SOCKET_URL ~= nil
  require('github-theme').setup {
    options = {
      transparent = is_tinker,
    },
  }
  vim.cmd.colorscheme 'github_light'
end

-- Return the module with the function
return {
  rose_pine = rose_pine,
  tokyonight = tokyonight,
  catppuccin = catpuccin,
  github_light = github_light,
}
