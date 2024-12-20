local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local fmt = require("luasnip.extras.fmt").fmt

-- Add LaTeX snippets
return { -- [[
    -- Implies
    s({trig="=>", snippetType="autosnippet"},
    {
      t("\\implies")  
    }),

    -- Inline Math
    s({trig="mk", snippetType="autosnippet"}, fmt("${}$", { i(1) })),


    -- Not Equals
    s({trig="!=",snippetType="autosnippet"}, t("\\neq")),

    -- Sum
    s({trig="sum",snippetType="autosnippet"}, fmt("\\sum_{{n={}}}^{{{}}} {}", { i(1, "1"), i(2, "\\infty"), i(3, "a_n z^n") })),

    -- Taylor Series
    s({trig="taylor",snippetType="autosnippet"}, fmt("\\sum_{{{}={}}}^{{{}}} {} (x-a)^{}", { i(1, "k"), i(2, "0"), i(3, "\\infty"), i(4, "c_"), i(1) })),

    -- Limit
    s({trig="lim",snippetType="autosnippet"}, fmt("\\lim_{{{} \\to {}}}", { i(1, "n"), i(2, "\\infty") })),

    s({trig="xx",snippetType="autosnippet"}, t("\\times")),
  --[[
    -- Greek Letters
    s("alpha", t("\\alpha")),
    s("beta", t("\\beta")),
    s("gamma", t("\\gamma")),
    s("delta", t("\\delta")),
    s("epsilon", t("\\epsilon")),
    s("zeta", t("\\zeta")),
    s("eta", t("\\eta")),
    s("theta", t("\\theta")),
    s("iota", t("\\iota")),
    s("kappa", t("\\kappa")),
    s("lambda", t("\\lambda")),
    s("mu", t("\\mu")),
    s("nu", t("\\nu")),
    s("xi", t("\\xi")),
    s("omicron", t("\\omicron")),
    s("pi", t("\\pi")),
    s("rho", t("\\rho")),
    s("sigma", t("\\sigma")),
    s("tau", t("\\tau")),
    s("upsilon", t("\\upsilon")),
    s("phi", t("\\phi")),
    s("chi", t("\\chi")),
    s("psi", t("\\psi")),
    s("omega", t("\\omega")),
    s("Alpha", t("\\Alpha")),
    s("Beta", t("\\Beta")),
    s("Gamma", t("\\Gamma")),
    s("Delta", t("\\Delta")),
    s("Epsilon", t("\\Epsilon")),
    s("Zeta", t("\\Zeta")),
    s("Eta", t("\\Eta")),
    s("Theta", t("\\Theta")),
    s("Iota", t("\\Iota")),
    s("Kappa", t("\\Kappa")),
    s("Lambda", t("\\Lambda")),
    s("Mu", t("\\Mu")),
    s("Nu", t("\\Nu")),
    s("Xi", t("\\Xi")),
    s("Omicron", t("\\Omicron")),
    s("Pi", t("\\Pi")),
    s("Rho", t("\\Rho")),
    s("Sigma", t("\\Sigma")),
    s("Tau", t("\\Tau")),
    s("Upsilon", t("\\Upsilon")),
    s("Phi", t("\\Phi")),
    s("Chi", t("\\Chi")),
    s("Psi", t("\\Psi")),
    s("Omega", t("\\Omega")),

    -- Other Symbols
    s("ooo", t("\\infty")),
    s("prod", t("\\prod")),
    s("pm", t("\\pm")),
    s("mp", t("\\mp")),
    s("+-", t("\\pm")),
    s("-+", t("\\mp")),
    s("...", t("\\dots")),
    s("<->", t("\\leftrightarrow")),
    s("->", t("\\to")),
    s("!>", t("\\mapsto")),
    s("invs", t("^{-1}")),
    s("\\\\\\", t("\\setminus")),
    s("||", t("\\mid")),
    s("and", t("\\cap")),
    s("orr", t("\\cup")),
    s("inn", t("\\in")),
    s("notin", t("\\not\\in")),
    s("\\subset eq", t("\\subseteq")),
    s("eset", t("\\emptyset")),
    s("set", fmt("\\{{}}", { i(1) })),
    s("=>", t("\\implies")),
    s("=<", t("\\impliedby")),
    s("iff", t("\\iff")),
    s("exists", t("\\exists")),

    -- Special Formatting
    s("mcal", fmt("\\mathcal{{{}}}", { i(1) })),
    s("mbb", fmt("\\mathbb{{{}}}", { i(1) })),
    s("ell", t("\\ell")),
    s("lll", t("\\ell")),
    s("LL", t("\\mathcal{L}")),
    s("HH", t("\\mathcal{H}")),
    s("CC", t("\\mathbb{C}")),
    s("RR", t("\\mathbb{R}")),
    s("ZZ", t("\\mathbb{Z}")),
    s("NN", t("\\mathbb{N}")),
    s("II", t("\\mathbb{1}")),

    -- Miscellaneous Symbols
    s("del", t("\\nabla")),
    s("avg", fmt("\\langle {} \\rangle", { i(1) })),
    s("norm", fmt("\\lvert {} \\rvert", { i(1) })),
    s("ceil", fmt("\\lceil {} \\rceil", { i(1) })),
    s("floor", fmt("\\lfloor {} \\rfloor", { i(1) }))
    ]]--
}

