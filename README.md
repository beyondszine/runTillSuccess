# rts : run till success
Its a short command that aims to run the given command as argument and try running it for as long as it returns non-success result.
The command takes two arguments:
- the command to run till success.
- the second command is to run when first succeed

Usage:
```sh
curl "https://raw.githubusercontent.com/beyondszine/runTillSuccess/master/rts.sh" | source
```
Examples:
```sh
bash rts.sh "nc -v -z 192.168.1.99 554" "notify-send 'its up'"
```
```sh
bash rts.sh "rsync -avzh /src/dir/fakedb.json user@example.com:/home/user/destination" "notify-send 'its done'"
```