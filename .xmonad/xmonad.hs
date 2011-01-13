import XMonad

main = xmonad defaultConfig
       { modMask = mod4Mask
       , terminal = "urxvt -pe tabbed -fn xft:Consolas:pixelsize=14"
       }