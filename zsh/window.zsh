# From https://github.com/slashbeast/things/blob/master/configs/DOTzshrc

termtitle() {
    local dir="${(%):-%~}"
    basedir=$(basename $dir)
    case "$1" in
        precmd)
            printf '\e]0;%s\a' "${basedir}"
        ;;
        preexec)
            printf '\e]0;%s [%s]\a' "$2" "${basedir}"
        ;;
    esac
}
