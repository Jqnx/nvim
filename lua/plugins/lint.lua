return {
  "mfussenegger/nvim-lint",
  opts = {
    -- Event to trigger linters
    events = { "BufWritePost", "BufReadPost", "InsertLeave" },
    linters_by_ft = {
      go = { "golangcilint" },
      python = { "ruff" },
      terraform = { "terraform_validate" },
      tf = { "terraform_validate" },
      fish = { "fish" },
      dockerfile = { "hadolint" },
    },
  },
}
