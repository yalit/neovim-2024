return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "olimorris/neotest-phpunit",
    },
    opts = {
      adapters = {
        ["neotest-phpunit"] = {
          phpunit_cmd = function()
            return "make tests"
          end,
        },
      },
    },
  },
}
