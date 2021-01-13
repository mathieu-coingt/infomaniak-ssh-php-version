function phpConfig {
	local p=`pwd`
	local phpVersion="8.0"
	
	if [ -e "${p}/.php-version" ]
	then
		while true
		do
			if [ -e "${p}/.php-version" ]
			then
				phpVersion=$(<${p}/.php-version)
				break
			fi

			if [[ $(dirname $p) == "/" ]]
			then
				break
			fi

			p=`dirname ${p}`
		done
	else
		return
	fi
	
	#Build prompt
    prompt="(php${phpVersion})"
	
	#Export PHP Path
	export PATH=/opt/php$phpVersion/bin:$PATH	
}

set_bash_prompt(){
    phpConfig
	PS1='\[\033[01;32m\]\u\[\033[00m\]@\[\033[01;31m\]\H\[\033[01;34m\] ${prompt} \w \$\[\033[00m\] '
}
PROMPT_COMMAND=set_bash_prompt
