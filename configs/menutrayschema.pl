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
    {item => ['firefox.sh', 'Firefox', 'firefox']}, 
	{item => ['telegram-desktop', 'Telegram', 'telegram-desktop']},
	{item => ['atril', 'Atril', 'atril']},
	{item => ['hexchat', 'Hexchat', 'hexchat']},
	{item => ['liferea', 'Liferea', 'liferea']},
	{item => ['xournal', 'Xournal', 'xournal']},
	{item => ['onboard', 'Onboard', 'onboard']},
	{item => ['discord-canary', 'Discord', 'discord-canary']},
	{item => ['python /home/rooxo/Apps/bookDB/main.py', 'BookDB','python']},

	{sep => undefined},

	{item => ['rotate.sh 1', 'Rotate Left', 'termite']},
	{item => ['rotate.sh 2', 'Rotate Right', 'termite']},
	{item => ['rotate.sh 0', 'Rotate Normal', 'termite']},

	{sep => undefined},

	{item => ['xinput float 13 && xinput float 14', 'Keyboard off', 'terminal']},
	{item => ['xinput --reattach 13 3 && xinput --reattach 14 2', 'Keyboard on', 'terminal']},

	{sep => undefined},

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
	{exit       => ['Exit', 'exit']},
];
