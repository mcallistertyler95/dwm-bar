spotify-now -i "%artist - %title"

dwm_spotify() {
    ISCLOSED=$(spotify-now -e "closed")
    if [ "$ISCLOSED" = "closed" ]; then
        CURRENTLY_PLAYING="closed"
    else
        CURRENTLY_PLAYING=$(spotify-now -i "%artist - %title")
    fi
    if ! [ "$CURRENTLY_PLAYING" = "closed" ]; then
        printf "%s" "$SEP1"
        if [ "$IDENTIFIER" = "unicode" ]; then
            printf "🎹 %s" "$CURRENTLY_PLAYING"
        else
            printf "MUSIC %s" "$CURRENTLY_PLAYING"
        fi
        printf "%s\n" "$SEP2"
    fi
}

dwm_spotify