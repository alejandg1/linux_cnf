from libqtile import qtile
import json


def search():
    qtile.cmd_spawn("sh -c ~/.config/rofi/launchers/mine/launcher.sh"),


def power():
    qtile.cmd_spawn("sh -c ~/.config/rofi/applets/bin/powermenu.sh "),


def get_colors():
    with open("./schemes.json") as f:
        colors = json.load(f)
    return colors
