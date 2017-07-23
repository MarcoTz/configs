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
    {item => ['xdg-open .',        'File Manager',      'file-manager']},
    {item => ['termite',           'Terminal',          'terminal']},
    {item => ['chromium',		   'Chromium',          'web-browser']}, 
	{item => ['cellwriter', 'Cellwriter', 'cellwriter']},
	{item => ['xournal', 'Xournal', 'xournal']},
	{item => ['mcomix', 'MComix', 'mcomix']},
	{item => ['FBReader', 'FBReader', 'FBReader']},
	{item => ['zathura', 'Zathura', 'zathura']},
	{item => ['hexchat', 'Hexchat', 'hexchat']},
	{item => ['liferea', 'Liferea', 'liferea']},

	{sep => undefined},

	{item => ['rotate.sh 1', 'Rotate Left', 'terminal']},
	{item => ['rotate.sh 2', 'Rotate Right', 'terminal']},
	{item => ['rotate.sh 0', 'Rotate Normal', 'terminal']},

	{sep => undefined},

	{item => ['xinput float 13 && xinput float 14', 'Turn off Keyboard', 'terminal']},
	{item => ['xinput --reattach 13 3 && xinput --reattach 14 2', 'Turn on Keyboard', 'terminal']},
 
    {menutray   => ['Menutray', 'preferences-desktop']},

    {sep        => undef},
    {regenerate => ['Regenerate', 'gtk-refresh']},
    {exit       => ['Exit', 'exit']},
];
