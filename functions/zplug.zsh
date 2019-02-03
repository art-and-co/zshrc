

local -A ZPLGM  # initial Zplugin's hash definition, then:
ZPLGM[BIN_DIR]="${ZDOT_LIB_DIR}/zplugin"
ZPLGM[HOME_DIR]="${ZCACHE_DIR}/zplugin"
ZPLGM[ZCOMPDUMP_PATH]="${ZCACHE_DIR}/zcompcache"

MANPATH="$ZPLGM[BIN_DIR]/doc:$MANPATH"

if [[ ! -d $ZPLGM[HOME_DIR] ]]; then
    mkdir -p $ZPLGM[HOME_DIR]
fi

source ${ZPLGM[BIN_DIR]}/zplugin.zsh
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

zplugin ice compile"*.lzui"
zplugin load zdharma/zui