sudo apt update -y
sudo apt install python-pip -y

# Next line is for command line test
# PYENV_HOME="/home/labsuser/jenkins/workspace/python-freestyle/.sample1"
PYENV_HOME="$WORKSPACE/.sample1"

if [[ -d $PYENV_HOME ]]; then
	rm –rf $PYENV_HOME
fi

virtualenv $PYENV_HOME
chmod +x $PYENV_HOME/bin/activate
. $PYENV_HOME/bin/activate

pip install -r ./requirements.txt
