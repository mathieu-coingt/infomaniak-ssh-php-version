# .bash_profile

#Use the bashrc if exists
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment
BASH_ENV=$HOME/.bashrc

#export BASH_ENV
export BASH_ENV
