# DVPN Node Send
Send DVPN from DVPN Node with lost menemonic

## How To

1. Run this command first.

``` 
apt install jq bc
wget https://github.com/sentinel-official/hub/releases/latest/download/sentinelhub && chmod +x sentinelhub && mv sentinelhub /usr/bin
```
2. Download the script.

```
wget https://raw.githubusercontent.com/atmosfermuda/dvpn-node-send/main/send.sh
```
3. Modify recipient address, minimum send, etc. 
```
nano send.sh
```
4. Run the script "Make sure your dvpn-node wallet keyring is in the test keyring!"

```
bash send.sh
```
5. Optional

You can schedule the script to send DVPN daily using cronjob like this 
```
crontab -e
```
Put this line at the bottom of the file
```
0 0 * * * bash /root/send.sh >/dev/null 2>&1
```

## Have any question feel free to reach me 
[Telegram:  @bloomindark](https://t.me/bloomindark)

## Support me
You can also support me by delegating some of your DVPN at [AtmosferMuda Validator](https://www.mintscan.io/sentinel/validators/sentvaloper1qksz3uscxvjyv8jdxw7lu26xqksddxwjwf7tvh)<br/>
or donating some DVPN to `sent1qksz3uscxvjyv8jdxw7lu26xqksddxwj3vpxr7`.<br/>
Thanks.