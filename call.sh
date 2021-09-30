server="fusionpbx.${hostname -d}
src_cid_name=
src_cid_number=
dest_cid_name=
dest_cid_number=
src=
dest=
auto_answer=false
rec=false
ringback=de-ring
key={api-key}
curl "https://$server/app/click_to_call/click_to_call.php?src_cid_name=$src_cid_name&src_cid_number=$src_cid_number&dest_cid_name=$dest_cid_name&dest_cid_number=$dest_cid_number&src=$src&dest=$dest&auto_answer=$auto_answer&rec=$rec&ringback=$ringback&key=$key"
