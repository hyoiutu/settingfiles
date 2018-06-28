eval `ssh-agent`

# 秘密鍵ファイル
KEY_FILENAME='github_rsa'
# パスフレーズ
PASSPHRASE=''

expect -c "
set timeout -1
spawn ssh-add $HOME/.ssh/$KEY_FILENAME
expect {
    \"Enter passphrase for\" {
        send \"$PASSPHRASE\r\"
    }
}
expect {
    \"denied\" { exit 1 }
    eof { exit 0 }
}
"

export PATH="$HOME/.cargo/bin:$PATH"
