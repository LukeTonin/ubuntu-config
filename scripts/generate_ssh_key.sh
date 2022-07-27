# This script is used to create a key pair. (E.g for use with github)

generate_key_pair() {
  PUB_KEY=~/.ssh/id_ed25519
  if [ ! -e $PUB_KEY".pub" ]
  then
    echo "Generating ssh key: $PUB_KEY_PATH";
    ssh-keygen -t ed25519 -f PUB_KEY;
  else
    echo "Public key $PUB_KEY.pub already exists:"
    cat ~/.ssh/id_ed25519.pub; 
  fi
}

generate_key_pair
