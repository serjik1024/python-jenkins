# PYENV_HOME="$WORKSPACE/.sample1"
PYENV_HOME="/home/labsuser/jenkins/workspace/python-freestyle/.sample1"

if [[ -d $PYENV_HOME ]]; then
	rm –rf $PYENV_HOME
fi

virtualenv $PYENV_HOME
chmod +x $PYENV_HOME/bin/activate
$PYENV_HOME/bin/activate

pip install -r ./requirements.txt
