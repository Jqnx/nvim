return {
  "vyfor/cord.nvim",
  lazy = false,
  cmd = {
    "Cord",
  },
  ---@type CordConfig
  opts = {
    editor = {
      client = "nvchad",
      tooltip = "codemaxxing",
    },
    display = {
      theme = "minecraft",
      flavor = "accent",
      view = "full",
    },
    text = {
      workspace = function(opts)
        local hour = tonumber(os.date "%H")
        local status = hour >= 22 and "🌙 Late night codemaxxing"
          or hour >= 18 and "🌆 Evening session"
          or hour >= 12 and "☀️ Afternoon coding"
          or hour >= 5 and "🌅 Grinding"
          or "🌙 Midnight hacking"

        return string.format("%s: %s", status, opts.filename)
      end,
    },
  },
}
