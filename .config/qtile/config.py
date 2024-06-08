# conf file Adre
import subprocess
from libqtile import hook
from libqtile import bar, layout, widget
from schemes import schemes
import os
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy


# default values
mod = "mod4"
alt = "mod1"
terminal = "kitty"
font = "Cascadia Code"


# █▄▀ █▀▀ █▄█ █▄▄ █ █▄░█ █▀▄ █▀
# █░█ ██▄ ░█░ █▄█ █ █░▀█ █▄▀ ▄█

keys = [

    # def keys
    Key([mod], "h", lazy.layout.left(),
        desc="Move focus to left"),
    Key([mod], "l", lazy.layout.right(),
        desc="Move focus to right"),
    Key([mod], "j", lazy.layout.down(),
        desc="Move focus down"),
    Key([mod], "k", lazy.layout.up(),
        desc="Move focus up"),
    Key([mod], "space", lazy.layout.next(),
        desc="Move window focus to other window"),
    Key([mod, "shift"], "h", lazy.layout.shuffle_left(),
        desc="Move window to the left"),
    Key([mod, "shift"], "l", lazy.layout.shuffle_right(),
        desc="Move window to the right"),
    Key([mod, "shift"], "j", lazy.layout.shuffle_down(),
        desc="Move window down"),
    Key([mod, "shift"], "k", lazy.layout.shuffle_up(),
        desc="Move window up"),
    Key([mod, "control"], "h", lazy.layout.grow_left(),
        desc="Grow window to the left"),
    Key([mod, "control"], "l", lazy.layout.grow_right(),
        desc="Grow window to the right"),
    Key([mod, "control"], "j", lazy.layout.grow_down(),
        desc="Grow window down"),
    Key([mod, "control"], "k", lazy.layout.grow_up(),
        desc="Grow window up"),
    Key([mod], "n", lazy.layout.normalize(),
        desc="Reset all window sizes"),
    Key([mod, "shift"], "Return",
        lazy.layout.toggle_split(),
        desc="Toggle between split and unsplit sides of stack",
        ),
    Key([mod], "Return", lazy.spawn(terminal),
        desc="Launch terminal"),
    Key([mod], "Tab", lazy.next_layout(),
        desc="Toggle between layouts"),
    Key([mod, "shift"], "q", lazy.window.kill(),
        desc="Kill focused window"),
    Key([mod], "f",
        lazy.window.toggle_fullscreen(),
        desc="Toggle fullscreen on the focused window",),
    Key([mod], "t", lazy.window.toggle_floating(),
        desc="Toggle floating on the focused window"),
    Key([mod, "control"], "r", lazy.reload_config(),
        desc="Reload the config"),
    Key([mod, "control"], "q", lazy.shutdown(),
        desc="Shutdown Qtile"),
    Key([mod], "r", lazy.spawncmd(),
        desc="Spawn a command using a prompt widget"),

    # MY KEYBINDS
    Key([mod], "q",
        lazy.spawn("sh -c ~/.config/rofi/launchers/mine/launcher.sh"),
        desc="Launch Rofi app launcher"),
    Key([mod], "s",
        lazy.spawn("sh -c ~/.config/rofi/applets/bin/screenshot.sh"),
        desc="Launch Rofi screenshot"),
    Key([mod], "p",
        lazy.spawn("sh -c ~/.config/rofi/applets/bin/powermenu.sh "),
        desc="Launch Rofi powermenu"),
    Key([mod], "n",
        lazy.spawn("sh -c ~/.config/rofi/applets/bin/quicklinks.sh "),
        desc="Launch Rofi quicklinks"),
    Key([mod], "v",
        lazy.spawn("pavucontrol"),
        desc="Launch pavucontrol"),
    Key([mod], "i",
        lazy.spawn("sh -c setxkbmap -layout us"),
        desc="set keyboard layout to english"),
    Key([mod], "e",
        lazy.spawn("sh -c setxkbmap -layout latam"),
        desc="set keyboard layout to spanish latam"),
    Key([mod], "i",
        lazy.spawn("sh -c ~/scripts/today.sh"),
        desc="copy today's date to clipboard"),
    Key([mod, "shift"], "left",
        lazy.spawn("sh -c playerctl previous -p spotify"),
        desc=""),
]
# como uso Xorg se fué a la cagada las keybinds de wayland


# █▀▀ █▀█ █▀█ █░█ █▀█ █▀
# █▄█ █▀▄ █▄█ █▄█ █▀▀ ▄█

groups = [Group(i, label="󰏃") for i in "123456789"]

for i in groups:
    keys.extend(
        [
            Key(
                [mod],
                i.name,
                lazy.group[i.name].toscreen(),
                desc="Switch to group {}".format(i.name),
            ),
            Key(
                [mod, "shift"],
                i.name,
                lazy.window.togroup(i.name, switch_group=True),
                desc="Switch to & move focused window to group {}".format(
                    i.name),
            ),
            Key([mod, "control"], i.name,
                lazy.window.togroup(i.name),
                desc="move focused window to group {}".format(i.name)),
        ]
    )

# LAYOUTS
layouts = [
    layout.Columns(
        margin=[6, 6, 6, 6],
        border_focus=schemes["tokyonight"]["cyan"],
        border_normal=schemes["tokyonight"]["background"],
        fullscreen_border_width=3,
        border_width=2),
    layout.Max(
        border_focus=schemes["tokyonight"]["cyan"],
        border_normal=schemes["tokyonight"]["background"],
        margin=10,
        border_width=1),
    layout.Floating(
        border_focus=schemes["tokyonight"]["cyan"],
        border_normal=schemes["tokyonight"]["background"],
        margin=10,
        border_width=2,
        fullscreen_border_width=3),
    layout.Matrix(
        border_focus=schemes["tokyonight"]["cyan"],
        border_normal=schemes["tokyonight"]["background"],
        margin=10,
        border_width=0,
    ),
    # layout.Stack(num_stacks=2),
    # layout.Bsp(),
    # layout.MonadTall(),
    # layout.MonadWide(),
    # layout.RatioTile(),
    # layout.Tile(),
    # layout.TreeTab(),
    # layout.VerticakTile(),
    # layout.Zoomy(),
]

widget_defaults = dict(
    font=font,
    fontsize=12,
    padding=3,
)
extension_defaults = widget_defaults.copy()


# █▄▄ ▄▀█ █▀█
# █▄█ █▀█ █▀▄


screens = [
    Screen(
        top=bar.Bar(
            [
                widget.Spacer(
                    length=6,
                    background=schemes["tokyonight"]["background"],
                ),
                widget.Image(
                    filename="~/Imágenes/iconos/arch.png",
                    background=schemes["tokyonight"]["background"],
                ),
                widget.GroupBox(
                    fontsize=13,
                    borderwidth=0,
                    highlight_method='block',
                    active=schemes["tokyonight"]["cyan"],
                    block_highlight_text_color=schemes["tokyonight"]["magenta"],
                    highlight_color=schemes["tokyonight"]["cyan"],
                    inactive=schemes["tokyonight"]["comment"],
                    foreground=schemes["tokyonight"]["foreground"],
                    background=schemes["tokyonight"]["background"],
                    this_current_screen_border=schemes["tokyonight"]["background"],
                    this_screen_border=schemes["tokyonight"]["cyan"],
                    other_current_screen_border=schemes["tokyonight"]["background"],
                    other_screen_border=schemes["tokyonight"]["cyan"],
                    urgent_border=schemes["tokyonight"]["red"],
                    rounded=True,
                    disable_drag=True,
                ),
                widget.Spacer(
                    length=8,
                    background=schemes["tokyonight"]["background"],
                ),
                widget.CurrentLayoutIcon(
                    background=schemes["tokyonight"]["background"],
                    scale=0.7,
                ),
                widget.CurrentLayout(
                    background=schemes["tokyonight"]["background"],
                    foreground=schemes["tokyonight"]["cyan"],
                    fmt='{}',
                    rounded=True,
                    font=font,
                    fontsize=13,
                ),
                widget.KeyboardLayout(
                    background=schemes["tokyonight"]["background"],
                    configured_keyboards=['latam', 'us'],
                    foreground=schemes["tokyonight"]["cyan"],
                    fontsize=13,
                    update_interval=1,
                    font=font,
                ),
                widget.Spacer(
                    background=schemes["tokyonight"]["black"],
                ),
                widget.Memory(
                    background=schemes["tokyonight"]["background"],
                    foreground=schemes["tokyonight"]["cyan"],
                    fontsize=13,
                    update_interval=1,
                    font=font,

                ),
                widget.Sep(
                    foreground=schemes["tokyonight"]["magenta"],
                    background=schemes["tokyonight"]["background"],
                    linewidth=2,
                ),
                widget.Bluetooth(
                    background=schemes["tokyonight"]["background"],
                    fontsize=2,
                ),
                widget.Image(
                    filename='~/Imágenes/iconos/clock.png',
                    background=schemes["tokyonight"]["background"],
                    margin_y=6,
                    margin_x=5,
                ),
                widget.Clock(
                    format='%I:%M %p',
                    background=schemes["tokyonight"]["background"],
                    foreground=schemes["tokyonight"]["cyan"],
                    font=font,
                    fontsize=13,
                ),


                widget.Spacer(
                    length=18,
                    background=schemes["tokyonight"]["background"],
                ),

            ],
            22,
            border_width=[0, 0, 0, 0],
            margin=[5, 50, 6, 50],
        ),
    ),
]

mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(),
         start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(),
         start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front()),
]

dgroups_key_binder = None
dgroups_app_rules = []
follow_mouse_focus = True
bring_front_click = False
floats_kept_above = True
cursor_warp = False
floating_layout = layout.Floating(
    border_focus=schemes["tokyonight"]["cyan"],
    border_normal=schemes["tokyonight"]["background"],
    float_rules=[
        *layout.Floating.default_float_rules,
        Match(wm_class="confirmreset"),  # gitk
        Match(wm_class="makebranch"),  # gitk
        Match(wm_class="maketag"),  # gitk
        Match(wm_class="ssh-askpass"),  # ssh-askpass
        Match(title="branchdialog"),  # gitk
        Match(title="pinentry"),  # GPG key password entry
    ]
)


@hook.subscribe.startup_once
def start():
    start = os.path.expanduser('~/.config/qtile/autostart.sh')
    subprocess.run([start])


auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True
auto_minimize = True
wl_input_rules = None
