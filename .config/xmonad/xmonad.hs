import XMonad

import XMonad.Util.EZConfig
import XMonad.Util.Ungrab

import XMonad.Hooks.SetWMName
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.ManageDocks

import XMonad.Layout.Fullscreen
import XMonad.Layout.Spacing
import XMonad.Layout.Gaps
import XMonad.Layout.ThreeColumns
import XMonad.Layout.NoBorders
import XMonad.Layout.Maximize

-- colours
normBord = "#4c566a"
focdBord = "#5e81ac"

myModMask       = mod4Mask
myTerminal      = "alacritty"
myWorkspaces    = [ "I","II","III","IV","V","VI","VII","VIII","IX","X" ]
myBorderWidth   = 2

myStartupHook   = do
    spawn "$HOME/.config/xmonad/scripts/autostart.sh"
    setWMName "LG3D"

myLayout = smartSpacing 10 $ avoidStruts $ tiled ||| Mirror tiled ||| threeCol ||| smartBorders Full
  where
    threeCol    = smartBorders $ ThreeColMid nmaster delta ratio
    tiled       = smartBorders $ Tall nmaster delta ratio
    nmaster     = 1     -- Default number of windows in the master pane
    ratio       = 1/2   -- Default proportion of screen occupied by master pane
    delta       = 3/100 -- Percent of screen to increment by when resizing panes

myConfig = def
    { modMask       = myModMask
    , terminal      = myTerminal
    , layoutHook    = gaps [(U,50), (R,10), (D,10), (L,10)] . maximize $ myLayout
--    , layoutHook    = maximize $ myLayout
    , startupHook   = myStartupHook
    , workspaces    = myWorkspaces
    , borderWidth   = myBorderWidth
    , normalBorderColor     = normBord
    , focusedBorderColor    = focdBord
    }
  `additionalKeysP`
    [ ("M-b",   spawn "google-chrome-stable")
    , ("M-f",   spawn "rofi -show filebrowser")
    , ("M-p",   spawn "rofi -show run")
    , ("M-w",   spawn "rofi -show window")

    -- Layout control
    , ("C-g",   sendMessage ToggleGaps)
    , ("M-s",   sendMessage (ModifyWindowBorderEnabled (\b -> not b)))
    , ("M-m",   withFocused (sendMessage . maximizeRestore))

    -- Brightness control
    , ("<XF86MonBrightnessUp>"      , spawn "brightnessctl s +5%")
    , ("<XF86MonBrightnessDown>"    , spawn "brightnessctl s 5%-")


    -- Volume control
    , ("<XF86AudioRaiseVolume>"     , spawn "pactl set-sink-volume @DEFAULT_SINK@ +5%")
    , ("<XF86AudioLowerVolume>"     , spawn "pactl set-sink-volume @DEFAULT_SINK@ -5%")
    , ("<XF86AudioMute>"            , spawn "pactl set-sink-mute toggle")

    -- Media keys
    , ("<XF86AudioPlay>"    , spawn "playerctl play-pause")
    , ("<XF86AudioStop>"    , spawn "playerctl stop")
    , ("<XF86AudioNext>"    , spawn "playerctl next")
    , ("<XF86AudioPrev>"    , spawn "playerctl previous")
    ]

main :: IO ()
main = xmonad $ docks . ewmhFullscreen . ewmh $ myConfig
