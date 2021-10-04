source $(dirname "$0")/fusionpbx-c2c.settings
server="fusionpbx.$(hostname -d)"
dest=${1#"tel://"}
dest=${dest#"tel:"}
dest=${dest/-/}
dest=${dest///}
dest=${dest/ /}
curl -G -v "https://$server/app/click_to_call/click_to_call.php" --data-urlencode "src_cid_name=$src_cid_name" --data-urlencode "src_cid_number=$src_cid_number" --data-urlencode "dest_cid_name=$dest_cid_name" --data-urlencode "dest_cid_number=$dest_cid_number" --data-urlencode "src=$src" --data-urlencode "dest=$dest" --data-urlencode "auto_answer=$auto_answer" --data-urlencode "rec=$rec" --data-urlencode "ringback=$ringback" --data-urlencode "key=$key" -H "Connection: close"
