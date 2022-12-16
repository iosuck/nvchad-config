local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  b.formatting.deno_fmt,
  b.formatting.prettier.with { filetypes = { "html","htmldjango","djangohtml", "markdown", "css" } ,extra_args = { "--single-quote", "--print-width 120" }},

  -- Lua
  b.formatting.stylua,

  -- Shell
  b.formatting.shfmt,
  b.formatting.phpcsfixer,
  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },

  -- cpp
  b.formatting.black.with { extra_args = { "--fast","--line-length","90" } },
  b.formatting.clang_format,
  b.formatting.rustfmt,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
