dir="/root/.sentinelnode" #set your node config folder here
rpc="https://rpc.na.sentinel.atmosfermuda.com:443" #set rpc address here
recipient_address="sent........" #set your recipient address here
sender_address=$(sentinelhub keys list --home ${dir} --keyring-backend test --output json | jq -r .[].address)
balance=$(sentinelhub q bank balances --node ${rpc} ${sender_address} --output json --denom udvpn | jq -r .amount)
total_send=$(echo "${balance}-50000000" | bc) #change 500000000 to any amount you want to keep in the wallet

echo "Checking Balance..."
echo "Balance ${balance}" 

if [ $total_send -gt 5000000 ] #change 5000000 to change minimum amount to be send
then
echo "Sending ${total_send} from ${sender_address} to ${recipient_address}"
sentinelhub tx bank send ${sender_address} ${recipient_address} ${total_send}udvpn --home ${dir} --keyring-backend test --chain-id=sentinelhub-2 --node ${rpc} --gas-prices=0.5udvpn --gas=150000 -y
else
echo "Not enough DVPN!"
fi