-- Name:         Spacebuddy
-- Description:  Light and dark theme inspired by spacemacs-theme
-- Author:       Th3Whit3Wolf <the.white.wolf.is.1337@gmail.com>
-- Maintainer:   Th3Whit3Wolf <the.white.wolf.is.1337@gmail.com>
-- Website:      https://github.com/Th3Whit3Wolf/spacebuddy
-- License:      Vim License (see `:help license`)
vim.cmd('packadd colorbuddy.nvim')
local Color, colors, Group, groups, styles = require("colorbuddy").setup()
local Color = require('colorbuddy.color').Color
local Group = require('colorbuddy.group').Group
local g = require('colorbuddy.group').groups
local c = require('colorbuddy.color').colors
local s = require('colorbuddy.style').styles
local b = s.bold
local i = s.italic
local n = s.inverse
local uc = s.undercurl
local ul = s.underline
local r = s.reverse
local sto = s.standout
local no = s.NONE
local v = vim.g

v.colors_name = 'spacebuddy'


-------------------
-- Common Colors --
-------------------

Color.new('bg', '#333333')
Color.new('fg', '#eeeeee')
Color.new('fg2', '#444444')
Color.new('gray', '#252525')
Color.new('black', '#151515')
Color.new('red', '#c20000')
Color.new('lightred', '#d60000')
Color.new('green', '#00a464')
Color.new('lightgreen', '#00c264')
Color.new('yellow', '#d4d400')
Color.new('lightyellow', '#f2f200')
Color.new('blue', '#0073e4')
Color.new('lightblue', '#0091f8')
Color.new('cyan', '#006495')
Color.new('lightcyan', '#0073b3')
Color.new('purple', '#a300ff')
Color.new('lightpurple', '#c35bff')
Color.new('orange', '#d67800')
Color.new('lightorange', '#d6903b')
Color.new('brown', '#965300')
Color.new('magenta', '#b300b3')
Color.new('lightmagenta', '#d100d1')

----------------------------
-- Common Terminal Colors --
----------------------------

v.terminal_color_1 = '#d26487'
v.terminal_color_2 = '#35a8a5'
v.terminal_color_3 = '#b89f33'
v.terminal_color_4 = '#6981c5'
v.terminal_color_5 = '#a15ea7'
v.terminal_color_6 = '#288668'
v.terminal_color_9 = '#f2241f'
v.terminal_color_10 = '#67b11d'
v.terminal_color_11 = '#b1951d'

-------------------------------------------------------------
-- Syntax Groups (descriptions and ordering from `:h w18`) --
-------------------------------------------------------------

Group.new('String',c.yellow,c.none,s.NONE)
--| Constants |--
Group.new('Constant',c.lightmagenta,c.none,s.NONE) -- i.e. 3 or 12
Group.new('Character',c.orange,c.none,s.NONE)
Group.new('Boolean',c.yellow,c.none,s.NONE)
Group.new('Number',c.lightmagenta,c.none,s.NONE)
Group.new('Float',c.lightmagenta,c.none,s.NONE)
--| Syntax |--
Group.new('Identifier',c.fg,c.none,s.NONE) --variable name
Group.new('Function',c.lightblue,c.none,s.NONE) -- function name and methods (for classes)
Group.new('Statement',c.purple,c.orange,s.NONE)
Group.new('Conditional',c.lightyellow,c.none,s.bold) -- if, then, else, endif, switch, etc
Group.new('Repeat',c.lightyellow,c.none,s.bold) --loops
Group.new('Label',c.blue,c.none,s.bold) -- case, default, etc
Group.new('Operator',c.yellow,c.none,s.bold) -- sizeof, +, ++, ->, etc
Group.new('Keyword',c.lightyellow,c.none,s.bold) -- other keywords
Group.new('Exception',c.purple,c.none,s.bold) -- try, catch, throw
Group.new('Comment',c.lightblue,c.none,s.NONE) -- comments!
--| Types |--
Group.new('Type',c.lightgreen,c.none,s.bold) -- int, long, char, vector
Group.new('StorageClass',c.lightyellow,c.none,s.bold) --static, register, volatile, etc
Group.new('Structure',c.lightyellow,c.none,s.bold) --struct, union, enum, etc
Group.new('Typedef',c.lightgreen,c.none,s.bold) -- a typedef
Group.new('Special',c.orange,c.none,s.NONE) -- any special symbol
Group.new('SpecialChar',c.orange,c.none,s.NONE) -- special char in a constant (like vector<>?)
--| Preprocessor |--
Group.new('Preproc',c.magenta,c.none,s.NONE) --generic preprocessor
Group.new('Include',c.magenta,c.none,s.NONE) -- #include
Group.new('Define',c.magenta,c.none,s.NONE) -- #define
Group.new('Macro',c.magenta,c.none,s.NONE) -- same as #define
Group.new('PreCondit',c.lightyellow,c.none,s.bold) -- preprocessor #if, #else, #endif, etc
--| Misc |--
Group.new('Tag',c.purple,c.none,c.bold) -- you can CTRL-] this
Group.new('Delimiter',c.lightpurple,c.none,s.NONE) -- char that need attention
Group.new('SpecialComment',c.blue,c.none,s.bold) -- special things inside a comment
Group.new('Debug',c.orange,c.none,c.bold) -- debugging statements
Group.new('Underlined',c.lightblue,c.none,s.NONE) -- text that stands out, HTML links
Group.new('Ignore',c.fg,c.none,s.NONE) -- left blank, hidden
Group.new('Error',c.lightred,c.none,s.bold) -- any erroneous construct
Group.new('Todo',c.lightcyan,c.non,s.bold) -- anything that needs extra attion; keywords like TODO FIXME and XXX
----| vim related things |----
Group.new('ColorColumn',c.fg2,c.bg,s.NONE) -- used for the columns set with 'colorcolumn'
Group.new('Conceal',c.blue,c.bg,s.NONE) -- placeholder characters substitude for concealed text
Group.new('Cursor',c.bg,c.fg,s.bold) -- the character under the cursor
Group.new('CursorIM',c.fg,c.none,s.reverse) -- like Cursor, but used when in IME mode
Group.new('Directory',c.blue,c.none,s.bold) -- directory names (and other special names in listings)
--| Diff |--
Group.new('DiffAdd',c.green,c.none,s.NONE) -- diff mode: Added line
Group.new('DiffChange',c.orange,c.none,s.NONE) 
Group.new('DiffDelete',c.red,c.none,s.NONE)
Group.new('DiffText',c.blue,c.none,s.NONE) -- dif mode: Changed text withing a changed line

Group.new('EndOfBuffer',c.lightblue,c.none,s.NONE) -- filler lines (~) after the last line in the buffer
Group.new('ErrorMsg',c.fg,c.bg,s.NONE) -- error messages on the command line
Group.new('VertSplit',c.black,c.none,s.NONE) -- the column separating vertically split windows
Group.new('Folded',c.purple,c.bg,s.italic) -- line usedfor closed folds
Group.new('FoldColumn',c.blue,c.none,s.NONE)
Group.new('SignColumn',c.fg,c.none,s.NONE) -- column where signs are displayed
Group.new('IncSearch',c.fg2,c.yellow,s.reverse) -- incserch highlighting; also used for text replace with ':s///c'
Group.new('LinNr',c.gray,c.none,s.NONE) -- Line number for :number and when number or relativenumber is set
Group.new('CursorLineNr',c.fg2,c.cyan,s.NONE) -- like LinNr when cursorline or relativenumber is set
Group.new('MatchParen',c.lightblue,c.black,s.bold) -- The paren or bracket that has a match
Group.new('ModeMsg',c.green,c.none,s.NONE) -- showmode message (e.g. '-- INSERT --')
Group.new('MoreMsg',g.ModeMsg,g.ModeMsg,g.ModeMsg) -- more-prompt
Group.new('NonText',c.fg,c.none,s.NONE) -- '~' and '@~ at the end of the window, characters that don't really exist in the text 
Group.new('Normal',c.fg,c.bg,s.NONE) -- normal text
--| Popup Menu |--
Group.new('Pmenu',c.fg,c.gray,s.NONE) -- Popup menu: normal item
Group.new('PmenuSel',c.fg2,c.cyan,s.NONE) -- Popup menu: selected item
Group.new('PmenuSbar',c.fg,c.bg,s.NONE) -- Popup menu: Scrollbar
Group.new('PmenuThumb',c.fg,c.black,s.NONE) -- Popup menu: Thumb of hte scrollbar

Group.new('Question',c.blue,c.none,s.bold) -- hit-enter prompt and yes/no questions
Group.new('QuickFixLine',g.Search,g.Search,g.Search) -- Current quickfix item in the quickfix window
Group.new('qfLinNr',g.Type,g.Type,g.Type)
Group.new('Search',c.gray,c.yellow,s.bold) -- last search pattern highlighting. also used for simila items that need to stand out
Group.new('SpecialKey',c.purple,c.none,s.NONE) -- Meta and special keys listed with ':map' also used for unprintable characters in the text. Text that is displayed differently from what it really is
Group.new('SpellBad',c.red,c.none,s.italic + s.undercurl) -- word that is not recognized by the spellchecker
Group.new('SpellCap',c.blue,c.none,s.italic + s.undercurl) --word that chould start with a capital
Group.new('SpellLocal',c.cyan,c.none,s.italic + s.undercurl) -- word that is recognized by the spellchecker as one that is used in another region
Group.new('SpellRare',c.purple,c.none,s.italic + s.undercurl) -- word that is recognized by the spellchecker as one that is hardly ever used
Group.new('StatusLineTerm',c.bg,c.green,g.StatusLine) -- status line of current :terminalwindow
Group.new('StatusLineTermNC',g.StatusLineNC,g.StatusLineNC,g.StatusLineNC) -- status line of non-current :terminal window
Group.new('TabLineFill',c.fg,c.bg,s.NONE)
Group.new('TabLineSel',c.fg,c.cyan,s.NONE)
Group.new('TabLine',g.TabLineFill,g.TabLineFill,g.TabLineFill)
Group.new('Title',c.blue,c.none,s.bold) -- titles for output from ':set all', ':autocmd' etc.
Group.new('Visual',c.none,c.gray,s.NONE) -- Visual mode selection
Group.new('VisualNOS',g.Visual,g.Visual,g.Visual) -- visual mode selection when vim is 'Not owning the selection' Only X11 Gui's gui-z11 and xterm-clipboard supports this.
Group.new('WarningMsg',c.red,c.none,s.NONE) -- warning messages
Group.new('WildMenu',c.fg,c.cyan,s.bold) -- current match in 'wildmenu' completion
Group.new('CursorColumnn',c.none,c.gray,s.NONE) -- Current cursor column highlight
Group.new('CursorLine',c.none,c.gray,s.NONE)
Group.new('ToolbarLine',c.fg,c.bg,s.NONE)
Group.new('ToolbarButton',c.fg,c.bg,s.bold)
--| Modes |--
Group.new('NormalMode',c.fg,c.none,s.reverse)
Group.new('InsertMode',c.green,c.none,s.reverse)
Group.new('ReplaceMode',c.red,c.none,s.reverse)
Group.new('CommandMode',c.purple,c.none,s.reverse)
Group.new('Warnings',c.orange,c.none,s.reverse)

--Group.new('',,,)
