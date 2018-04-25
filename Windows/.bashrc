alias gs='git status'
alias test='nunit "Unit Tests.nunit"'
alias test3='/c/Program\ Files\ \(x86\)/NUnit.org/nunit-console/nunit3-console.exe "Unit Tests.nunit"'
alias nunit='/c/Program\ Files\ \(x86\)/NUnit\ 2.6.4/bin/nunit-console-x86.exe -framework=net-4.0'
alias build='/c/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio/2017/Professional/MSBuild/15.0/Bin/MSBuild.exe'
alias vs='/c/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio/2017/Professional/Common7/IDE/devenv.exe'
alias vsc='/c/Program\ Files/Microsoft\ VS\ Code/Code.exe'
alias exp='explorer .'
alias python='/c/Users/uksand/AppData/Local/Programs/Python/Python36-32/python.exe'
alias todo="vim /n/Public/Standup/steve/todo.txt"
PS1='\[\033[m\]\[\033[33m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[01;34m\] \w\[\033[01;33m\]$(__git_ps1)'$'\n\[\033[1;31m\]☭ \[\033[00m\]'
PATH=$PATH:/c/Program\ Files\ \(x86\)/scala/bin/:/c/Program\ Files/java/jdk1.8.0_40/bin/:/c/Program\ File\ \(x86\)/chocolatey/bin
function sortFile {
	cat "$1" | sort > "$1.sorted"
}
export ASPNETCORE_ENVIRONMENT=Development
