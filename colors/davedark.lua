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
