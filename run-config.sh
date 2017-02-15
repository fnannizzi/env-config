env=$1
curdir=$(pwd)

if [ -d "generated" ]; then
    rm -rf generated
fi
mkdir generated
touch generated/.bash_profile

if [ "$env" == "osx_home" ] || [ "$env" == "osx_cht" ]; then
    bash osx/defaults.sh
fi

if [ "$env" == "osx_home" ] || [ "$env" == "osx_cht" ] || [ "$env" == "linux_mw" ]; then
    # copy preferences into a new file
    cat profile/bash_profile.sh > generated/.bash_profile

    if [ "$env" == "osx_home" ]; then
        ln -sf $(pwd)/generated/.bash_profile ~/.bash_profile
    elif [ "$env" == "osx_cht" ] || [ "$env" == "linux_mw" ]; then
        cat cht/cht.sh >> generated/.bash_profile
        # copy the file into my networked home if at work, so my preferences are set on any machine I log into
        cp generated/.bash_profile ~/.bashrc.mine
    fi
fi
