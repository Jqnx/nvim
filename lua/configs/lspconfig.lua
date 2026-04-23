require("nvchad.configs.lspconfig").defaults()

local servers = {
	"html",
	"cssls",
	"gopls",
	"bashls",
	"ansiblels",
	"dockerls",
	"docker_compose_language_service",
	"eslint",
	"jsonls",
	"lua_ls",
	"pyright",
	"ruff",
	"stylua",
	"svelte",
	"tailwindcss",
	"taplo",
	"terraformls",
	"tflint",
	"vtsls",
	"vue_ls",
	"yamlls",
}

vim.lsp.enable(servers)

-- to configure lsps further read :h vim.lsp.config
local vue_language_server_path = vim.fn.stdpath("data")
	.. "/mason/packages/vue-language-server/node_modules/@vue/language-server"
local vue_plugin = {
	name = "@vue/typescript-plugin",
	location = vue_language_server_path,
	languages = { "vue" },
	configNamespace = "typescript",
}

local svelte_language_server_path = vim.fn.stdpath("data")
	.. "/mason/packages/svelte-language-server/node_modules/typescript-svelte-plugin"
local svelte_plugin = {
	name = "typescript-svelte-plugin",
	location = svelte_language_server_path,
}

vim.lsp.config("vtsls", {
	settings = {
		vtsls = {
			tsserver = {
				globalPlugins = {
					vue_plugin,
					svelte_plugin,
				},
			},
		},
	},
	filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue", "svelte" },
})

vim.lsp.config("gopls", {
	settings = {
		gopls = {
			hints = {
				assignVariableTypes = true,
				compositeLiteralFields = true,
				compositeLiteralTypes = true,
				constantValues = true,
				functionTypeParameters = true,
				ignoredError = true,
				parameterNames = true,
				rangeVariableTypes = true,
			},
		},
	},
})

vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			hint = {
				enable = true, -- Enable inlay hints globally
				paramName = "All", -- Parameter name hints: "All" | "Literal" | "Disable"
				paramType = true, -- Function parameter type hints
				setType = true, -- Assignment type hints
				arrayIndex = "Disable", -- Array index hints: "Enable" | "Auto" | "Disable"
				await = true, -- Await hints
				semicolon = "All", -- Semicolon hints: "All" | "SameLine" | "Disable"
			},
		},
	},
})
