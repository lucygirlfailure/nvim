local M = {}

function M.load()
	-- 1. Grab the colors from the file Wallust generated
	-- Use pcall just in case Wallust hasn't run yet (avoids crash hangover)
	local status, colors = pcall(require, "core.wallust")

	if not status then
		print("Wallust colors not found! defaulting to gruvbox...")
		vim.cmd.colorscheme("gruvbox")
		return
	end

	-- 2. Clear existing highlights (optional, but good for purity)
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "wallust"

	-- 3. The Mixer: Helper function to set highlights easily
	local function hl(group, opts)
		vim.api.nvim_set_hl(0, group, opts)
	end

	-- 4. THE RECIPE: Map variables to actual UI elements
	-- This is where the magic happens!

	-- Base UI
	hl("Normal", { fg = colors.foreground, bg = colors.background })
	hl("NormalFloat", { fg = colors.foreground, bg = colors.background })
	hl("Cursor", { fg = colors.background, bg = colors.cursor })
	hl("LineNr", { fg = colors.color8 }) -- Grey-ish usually
	hl("CursorLine", { bg = colors.color0 }) -- Darker highlight for current line

	-- Syntax Highlighting (The "Flavor" Notes)
	hl("Comment", { fg = colors.color8, italic = true }) -- Comments are usually grey
	hl("Constant", { fg = colors.color3 }) -- Strings/Numbers often yellow/orange
	hl("String", { fg = colors.color2 }) -- Strings often green
	hl("Identifier", { fg = colors.color4 }) -- Variables often blue
	hl("Function", { fg = colors.color4, bold = true })
	hl("Statement", { fg = colors.color5 }) -- 'if', 'else', 'while' often purple
	hl("Keyword", { fg = colors.color5 })
	hl("Type", { fg = colors.color6 }) -- Classes/Types often cyan
	hl("Special", { fg = colors.color1 })

	-- UI Extras
	hl("Pmenu", { fg = colors.foreground, bg = colors.color0 }) -- Popup menu
	hl("PmenuSel", { fg = colors.color0, bg = colors.color4 }) -- Selected item
	hl("Search", { fg = colors.color0, bg = colors.color3 }) -- Search highlights

	-- Git / Diagnostics
	hl("DiagnosticError", { fg = colors.color1 })
	hl("DiagnosticWarn", { fg = colors.color3 })
	hl("DiagnosticInfo", { fg = colors.color4 })
	hl("DiagnosticHint", { fg = colors.color6 })
end

return M
