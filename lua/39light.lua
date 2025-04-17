local M = {}

local function shl(group, properties)
        vim.api.nvim_set_hl(0, group, properties)
end

local colors = {
        miku = "#39C5BB",
        cyan0 = "#00627A",

        purple0 = "#871094",
        purple1 = "#45164F",

        bg0 = "#FFFFFF",
        bg1 = "#F6F8FE",
        bg2 = "#F7F8FA",
        bg3 = "#EBECF0",
        bg4 = "#D6D6D6",
        bg5 = "#D5E1FF",
        bg6 = "#C2D8F3",

        fg1 = "#AEB3C2",
        fg2 = "#8C8C8C",
        fg0 = "#080808",

        green0 = "#10B981",
        green1 = "#1B7F37",
        green2 = "#077D18",
        green3 = "#BEE6BE",
        green4 = "#E9F5E6",

        red0 = "#f50000",
        red1 = "#DC2626",
        red2 = "#CE0606",
        red3 = "#D3353F",
        red4 = "#de0202",
        red5 = "#FFEEEB",

        blue0 = "#152F44",
        blue1 = "#0137A6",
        blue2 = "#0133B3",
        blue3 = "#264eff",
        blue7 = "#174be6",
        blue4 = "#1750EB",
        blue5 = "#0A69DA",
        blue6 = "#A6D2FF",

        orange = "#b86114",

        brown0 = "#9E880D",
        brown1 = "#B28B00",

        yellow0 = "#e6bc05",
        yellow1 = "#F2BF56",
        yellow2 = "#FCD57E",
        yellow3 = "#FEE6B1",
        yellow4 = "#F7E6A0",

        -- ___package = "#805900",
        -- ___keywrd4 = "#800000",
        -- ___variabl = "#7f0000",
        --
        -- ___keyword = "#3333bb",
        -- _attribute = "#174ad4",
        -- _reference = "#336ecc",
        -- regexpPaeter="#297bde",
        -- globalVariable = "#830091",
        -- _static_method = "#662277",
        -- keywrdAtributs = "#74118c",
        -- clasPAtributes = "#851691",
        --
        -- cent_tag_value = "#3d3d3d",
        -- _xt_attributes = "#414d41",
        --
        -- _function_call = "#36666b",
        -- local_function = "#286d73",
        -- go_methoceiver = "#88aa99",
        -- local_variable = "#248f8f",
        -- [efring_escape = "#3377aa",
}

function M.load()
        vim.cmd("hi clear")
        if vim.fn.exists("syntax_on") then
                vim.cmd("syntax reset")
        end

        vim.o.background = "light"
        vim.g.colors_name = "39light"

        -- UI
        shl("Normal", { fg = colors.fg0, bg = colors.bg0 })
        shl("NormalFloat", { bg = colors.bg2 })
        shl("FloatBorder", { bg = colors.bg2, fg = colors.bg3 })
        shl("LineNr", { fg = colors.fg1 })
        shl("EndOfBuffer", { link = "Whitespace" })
        shl("WildMenu", { bg = colors.bg2 })
        shl("Pmenu", { bg = colors.bg2 })
        shl("PmenuSel", { bg = colors.bg5 })
        shl("PmenuSbar", { bg = colors.bg2 })
        shl("PmenuThumb", { bg = colors.bg2 })
        shl("PmenuMatch", { bold = true })
        shl("PmenuMatchSel", { bold = true })
        shl("TabLine", { bg = colors.bg2 })
        shl("TabLineSel", { fg = colors.red1, bg = colors.bg0, bold = true })
        shl("CursorLine", { bg = colors.bg1 })
        shl("ColorColumn", { link = "CursorLine" })
        shl("StatusLine", { fg = colors.blue3 })
        shl("StatusLineNC", { link = "StatusLine" })
        shl("Folded", { bg = colors.green4 })
        shl("Search", { bg = colors.yellow2 })
        shl("IncSearch", { bg = colors.red1 })
        shl("MatchParen", { bg = colors.blue6 })
        shl("Visual", { bg = colors.blue6 })
        shl("Directory", { fg = colors.fg0 })
        shl("Whitespace", { fg = colors.bg3 }) --indent line
        shl("WinSeparator", { link = "Whitespace" })
        shl("MsgSeparator", { link = "CursorLine" })
        shl("WarningMsg", { fg = colors.orange })
        shl("ErrorMsg", { fg = colors.red1 })
        shl("ModeMsg", { bg = colors.bg0, fg = colors.bg0 })

        -- Syntax
        shl("Title", { link = "Number" })
        shl("Todo", { fg = colors.red0 })
        shl("Underlined", { underline = true })
        shl("Operator", { fg = colors.fg0 })
        shl("Comment", { fg = colors.fg2, italic = false })
        shl("Function", { fg = colors.cyan0 })
        shl("Keyword", { fg = colors.blue2 })
        shl("String", { fg = colors.green2 })
        shl("Number", { fg = colors.blue4 })
        shl("PreProc", { fg = colors.blue3 })
        shl("Type", { fg = colors.blue0 })
        shl("Statement", { fg = colors.blue7 })
        shl("Identifier", { fg = colors.fg0 })
        shl("Special", { fg = colors.fg0 })
        shl("Constant", { fg = colors.blue2 })
        shl("Error", { fg = colors.red0 })
        --TODO:
        -- shl("Character",      { fg = colors.yellow })
        -- shl("Float",          { fg = colors.white })
        -- shl("Boolean",        { fg = colors.blue })
        -- shl("Conditional",    { fg = colors.keyword })
        -- shl("Repeat",         { fg = colors.keyword })
        -- shl("Label",          { fg = colors.keyword })
        -- shl("Exception",      { fg = colors.keyword })
        -- shl("Include",        { fg = colors.keyword })
        -- shl("Define",         { fg = colors.keyword })
        -- shl("SpecialChar",    { fg = colors.yellow })
        -- shl("Delimiter",      { fg = colors.medium_gray })
        -- shl("Tag",            { fg = colors.blue })
        -- shl("Debug",          { fg = colors.error })
        -- shl("Macro",          { fg = colors.medium_gray })
        -- shl("StorageClass",   { fg = colors.keyword })
        -- shl("Structure",      { fg = colors.accent })
        -- shl("Typedef",        { fg = colors.accent })
        -- shl("SpecialComment", { fg = colors.comment, italic = true })

        shl("DiagnosticError", { fg = colors.red1 })
        shl("DiagnosticWarn", { fg = colors.orange })
        shl("DiagnosticInfo", { fg = colors.blue5 })
        shl("DiagnosticHint", { fg = colors.green0 })
        shl("DiagnosticUnderlineError", { undercurl = true, sp = colors.red0 })
        shl("DiagnosticUnderlineWarn", { undercurl = true, sp = colors.yellow1 })
        shl("DiagnosticUnderlineInfo", { undercurl = true, sp = colors.blue5 })
        shl("DiagnosticUnderlineHint", { undercurl = true, sp = colors.green0 })
        shl("DiffChange", { bg = colors.bg6 })
        shl("DiffAdd", { bg = colors.green3, fg = colors.green1 })
        shl("DiffText", { bg = colors.red5, fg = colors.red3 })
        shl("DiffDelete", { bg = colors.bg4, fg = colors.fg2 })
        shl("diffAdded", { fg = colors.green2 })
        shl("diffRemoved", { fg = colors.red2 })
        shl("diffChanged", { fg = colors.brown1 })

        --PLUG: Treesitter highlights
        shl("@markup.heading.1.markdown", { fg = colors.purple0, bold = true })
        shl("@markup.heading.2.markdown", { fg = colors.blue3, bold = true })
        shl("@markup.heading.3.markdown", { fg = colors.blue3, bold = true })
        shl("@markup.heading.4.markdown", { fg = colors.blue3, bold = true })
        shl("@markup.heading.5.markdown", { fg = colors.blue3, bold = true })
        shl("@markup.heading.6.markdown", { fg = colors.blue3, bold = true })

        shl("@comment", { link = "Comment" })
        shl("@number", { link = "Number" })
        shl("@operator", { link = "Operator" })

        shl("@type", { link = "Type" })
        shl("@type.builtin", { fg = colors.blue2 })

        shl("@keyword", { link = "Keyword" })
        shl("@keyword.import", { fg = colors.purple0 })

        shl("@function", { link = "Function" })
        shl("@function.builtin", { link = "Function" })

        shl("@variable", { fg = colors.blue0 })
        shl("@variable.builtin", { fg = colors.fg0 })

        shl("@string", { link = "String" })
        shl("@string.escape", { fg = colors.blue1 })
        shl("@string.regexp", { fg = colors.blue1 })

        shl("@boolean", { link = "Constant" })
        shl("@constant", { link = "Constant" })
        shl("@constant.builtin", { link = "Constant" })
        shl("@constant.macro", { link = "Constant" })

        -- shl("@class", { fg = colors.fg0 })
        -- shl("@method", { link = "Function" })
        -- shl("@field", { link = "Keyword" })
        -- shl("@interface", { fg = colors.fg0 })
        -- shl("@namespace", { fg = colors.red1 })

        -- shl("@tag", { fg = colors.green0 })
        -- shl("@tag.attribute", { link = "@tag" })
        -- shl("@tag.delimiter", { link = "@tag" })

        -- shl("@property", { link = "@variable" })
        -- shl("@constructor", { link = "Function" })
        -- shl("@punctuation", { fg = colors.fg0 })
        -- shl("@parameter", { fg = colors.fg0 })
        -- shl("@attribute", { fg = colors.orange })
        --TODO:

        -- shl("LspReferenceText", { bg = colors.fg2 })
        -- shl("LspReferenceRead", { bg = colors.fg2 })
        -- shl("LspReferenceWrite", { bg = colors.fg2 })
        shl("@lsp.typemod.variable.functionScope", { fg = colors.blue0 })
        shl("@keyword.directive", { fg = colors.brown0 })
        shl("@lsp.type.property", { fg = colors.blue1 })

        --PLUG:
        shl("IndentLine", { link = "Whitespace" }) -- Indent mini
        shl("IndentLineCurrent", { fg = colors.red1 })
        shl("GitSignsAdd", { fg = colors.green0 })
        shl("GitSignsChange", { fg = colors.orange })
        shl("GitSignsDelete", { fg = colors.red1 })
        shl("FlashMatch", { link = "Normal" })
        shl("FlashCurrent", { bg = colors.red1 })
        shl("FlashLabel", { fg = colors.red4, bold = true })
        shl("BlinkCmpKind", { fg = colors.purple0, bold = true })
        shl("TelescopeSelection", { bg = colors.bg5 })
        shl("TelescopeSelectionCaret", { link = "TelescopeSelection" })
        shl("TelescopeMatching", { bg = colors.yellow3 })
        shl("TelescopeBorder", { bg = colors.bg, fg = colors.fg2 })
        shl("NvimTreeIndentMarker", { link = "Comment" })
        shl("NvimTreeGitFolderDirtyHL", { link = "diffRemoved" })
        shl("NvimTreeGitFileDirtyHL", { link = "NvimTreeGitFolderDirtyHL" })
        shl("NvimTreeGitFileNewHL", { fg = colors.green0 })
        shl("AlphaHeader", { fg = colors.miku })

        vim.g.terminal_color_background = colors.bg0
        vim.g.terminal_color_foreground = colors.fg0
        vim.g.terminal_color_0 = colors.bg
        vim.g.terminal_color_1 = colors.red4
        vim.g.terminal_color_2 = colors.green2
        vim.g.terminal_color_3 = colors.yellow1
        vim.g.terminal_color_4 = colors.blue2
        vim.g.terminal_color_5 = colors.purple0
        vim.g.terminal_color_6 = colors.blue3
        vim.g.terminal_color_7 = colors.fg
        vim.g.terminal_color_8 = colors.fg
        vim.g.terminal_color_9 = colors.red4
        vim.g.terminal_color_10 = colors.purple0
        vim.g.terminal_color_11 = colors.yellow0
        vim.g.terminal_color_12 = colors.cyan0
        vim.g.terminal_color_13 = colors.red0
        vim.g.terminal_color_14 = colors.yellow2
        vim.g.terminal_color_15 = colors.fg2
end

return M
