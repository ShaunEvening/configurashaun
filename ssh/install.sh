#!/bin/zsh

if [ -e ~/.ssh/id_ed25519 ]; then
    printf "  🟢 SSH key already exists.\n"
else
    # https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
    printf "  🔑 Generating a new SSH key..."
    ssh-keygen -t ed25519 -C "$EMAIL"
    eval "$(ssh-agent -s)"
fi

if [ -e ~/.ssh/config ]; then
    printf "  🟢 SSH config already exists.\n"
else
    ssh-add --apple-use-keychain ~/.ssh/id_ed25519
    printf "  📝 Writing osx specific settings to ssh config...\n"
    ssh-keyscan github.com >>~/.ssh/known_hosts
    cat <<EOT >>~/.ssh/config
Host *
	AddKeysToAgent yes
	UseKeychain yes
	IdentityFile ~/.ssh/id_ed25519
EOT
fi