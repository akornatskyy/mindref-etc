# Strong password generator
#
# Run it: genpasswd 8 Here is output: Kh5FwyTi
#
genpasswd() {
    local l=$1
    [ "$l" == "" ] && l=20
    tr -dc A-Za-z0-9_ < /dev/urandom | head -c ${l} | xargs
}
