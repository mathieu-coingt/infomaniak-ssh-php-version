# INFOMANIAK webhosting bashrc

INFOMANIAK webhosting offers SSH access to your account. This
bashrc switches the PHP cli version as configured in your ``.php-version``.

## How to use it

1/ To install this ``.bashrc``, open an SSH connexion to your webhosting account

2/ Then get the latest version from github and profit:

```shell
wget https://raw.githubusercontent.com/mathieu-coingt/infomaniak-ssh-php-version/main/.bashrc -O $HOME/.bashrc
```

```shell
source $HOME/.bashrc
```

3/ Finally, you have to create ``.php-version`` file in your folders where you want to change you PHP cli version.
In it, juste write the PHP version you want to use : 8.0 or 7.4  or 7.3 or 5.6

## Enhanced the prompt

Also, you can use the ``.bash_profile`` file given here, wich will show you in the prompt the PHP cli version used, and also gave you some colors ;-)

```shell
wget https://raw.githubusercontent.com/mathieu-coingt/infomaniak-ssh-php-version/main/.bash_profile -O $HOME/.bash_profile
```

## How to test it
You may have to close your SSH connection and connect again.
You can check the changes by navigating in your folder where you have write ``.php-version`` file : your prompt has to indicate you the PHP cli version used, and you can verify it by tiping ``php -v``
