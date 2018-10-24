--[[
Copyright © 2018, Bolteux of Quetzalcoatl
All rights reserved.
Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of React nor the
      names of its contributors may be used to endorse or promote products
      derived from this software without specific prior written permission.
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL Bolteux BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANhw3Y THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
]]

_addon.name = 'CrafterPoint'
_addon.author = 'Bolteux'
_addon.version = '1.00'
_addon.date = '10.24.2018'
_addon.commands = {'crafterpoint','cp'}

packets = require('packets')
pack = require('pack')
config = require('config')
files = require('files')
res = require('resources')
texts = require('texts')
extdata = require('extdata')
require('coroutine')
require('tables')
require('strings')
require('logger')
require('sets')
require('chat')


send_command('bind ^0 craft help')


windower.register_event('incoming text', function(original, modified, original_mode, modified_mode, blocked)
    if blocked or text == '' then
        return
    end

	if original:strip_format() == "Synthesis canceled." or original:strip_format() == 'Unable to execute that command. Your inventory is full.' then
		--continue = 0
		notice('Inventory is full')
	end
end)
