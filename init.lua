--[[ 
Core module is repsponsible for mamanging basic nvim configruration.
NOTE: This confiration should not be dependent from external sources like plugins.
]]--
require "core"
--[[ 
Plugins module is repsponsible for mamanging plugins.
Such as their installation and configuration.
]]--
require "plugins"
--[[
Development module is responsible for nvim configuration for dev proccess.
For example: LSP and DAP and other dev specific options.
--]]--
require "development"
