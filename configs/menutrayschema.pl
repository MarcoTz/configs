#!/usr/bin/perl

# menutray - schema file

=for comment

    item:       add an item inside the menu               {item => ['command', 'label', 'icon']},
    cat:        add a category inside the menu             {cat => ['name', 'label', 'icon']},
    sep:        horizontal line separator                  {sep => undef}
    raw:        any valid Perl code                        {raw => q(...)},
    tree:       custom category with items                {tree => [[{...}], 'label', 'icon']},
    begin_cat:  begin of a category                  {begin_cat => ['$var', 'name', 'icon']},
    end_cat:    end of a category                      {end_cat => '$var'},
    menutray:   generic menu settings                 {menutray => ['label', 'icon']},
    regenerate: regenerate menu                     {regenerate => ['label', 'icon']},
    exit:       quit menu                                 {exit => ['label', 'icon']},

=cut

# NOTE:
#    * Keys and values are case sensitive. Keep all keys lowercase.
#    * ICON can be a either a direct path to an icon or a valid icon name
#    * Category names are case insensitive. (X-XFCE and x_xfce are equivalent)

require "$ENV{HOME}/.config/menutray/config.pl";

our $SCHEMA = [
    #          COMMAND                 LABEL                ICON
    {item => ['chromium', 'Chromium', 'chromium']}, 
	{item => ['telegram-desktop', 'Telegram', 'telegram-desktop']},
	{item => ['atril', 'Atril', 'atril']},
	{item => ['hexchat', 'Hexchat', 'hexchat']},
	{item => ['liferea', 'Liferea', 'liferea']},
	{item => ['xournal', 'Xournal', 'xournal']},
	{item => ['cellwriter', 'Cellwriter', 'cellwriter']},
	{sep => undefined},

	{tree =>[
		[ 
		{ Name => "Left",
		Exec => "rotate.sh 1",
		Icon => "terminal"},
	
		{ Name => "Right",
		Exec => "rotate.sh 2",
		Icon => "terminal"},

		{ Name => "Normal",
		Exec => "rotate.sh 0",
		Icon => "terminal"},
		],
		'Rotate', 'terminal'
	]},

	{tree =>[
		[
		{Name => "Off",
		Exec => "xinput float 13 && xinput float 14",
		Icon => "terminal"},

		{Name => "On",
		Exec => "xinput --reattach 13 3 && xinput --reattach 14 2",
		Icon => "terminal"},

		],
		'Keyboard', 'terminal'
	]},

	{tree => [
		[
		{Name => "1",
		Exec => "i3-msg workspace 1",
		Icon => "i3"},
		{Name => "2",
		Exec => "i3-msg workspace 2",
		Icon => "i3"},
		{Name => "3",
		Exec => "i3-msg workspace 3",
		Icon => "i3"},
		{Name => "4",
		Exec => "i3-msg workspace 4",
		Icon => "i3"},
		{Name => "5",
		Exec => "i3-msg workspace 5",
		Icon => "i3"},
		{Name => "6",
		Exec => "i3-msg workspace 6",
		Icon => "i3"},
		{Name => "7",
		Exec => "i3-msg workspace 7",
		Icon => "i3"},
		{Name => "8",
		Exec => "i3-msg workspace 8",
		Icon => "i3"},
		{Name => "9",
		Exec => "i3-msg workspace 9",
		Icon => "i3"},
		{Name => "0",
		Exec => "i3-msg workspace 0",
		Icon => "i3"},
		],
		'Workspaces', 'i3'

	]},

	#{sep => undefined}, 
    #{menutray   => ['Menutray', 'preferences-desktop']},

    {sep        => undef},
    {regenerate => ['Regenerate', 'gtk-refresh']},
	{item=>['shutdow -t now','Shutdown','shutdown']},
    {exit       => ['Exit', 'exit']},
];
