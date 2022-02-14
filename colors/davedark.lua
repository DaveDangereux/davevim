-- In the main theme files an autocommand resets the theme whenever
-- a file in the theme directory is saved.
--
-- Doing so reloads this file, which resets all of the required
-- theme files to nil so that they can be re-required with any
-- changes that have been made.
--
-- The result is that we can save any of the theme files and
-- immediately see our changes take effect.

package.loaded["colorschemes.davedark"] = nil
package.loaded["colorschemes.davedark.config"] = nil
package.loaded["colorschemes.davedark.palette"] = nil
package.loaded["colorschemes.davedark.highlights"] = nil
require("colorschemes.davedark")

-- The following are just some resets for convenience while
-- editing the color scheme. They only take effect when the
-- color scheme is loaded, but some things don't reset properly
-- yet - e.g. treesitter rainbow extension for rainbow brackets
-- and colorizer for hex color preview are currently being
-- uncooperative.

local bufferline_ok, bufferline = pcall(require, "bufferline")
if not bufferline_ok then
  return
end

local feline_ok, feline = pcall(require, "feline")
if not feline_ok then
  return
end

require("plugins.bufferline").config()
require("plugins.feline").config()
