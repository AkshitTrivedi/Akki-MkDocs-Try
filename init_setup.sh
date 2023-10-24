# conda create --prefix ./conda_env python=3.10 -y
# conda activate ./conda_env
# pip install -r requirements.txt

echo [$(date)]: "START"
export _VERSION_=3.10
echo [$(date)]: "creating environment with python ${_VERSION_}"
# conda create --name conda_env python=${_VERSION_} -y
conda create --prefix ./conda_env python=${_VERSION_} -y
echo [$(date)]: "activate environment"
source activate ./conda_env
# conda activate conda_env
echo [$(date)]: "install requirements"
pip install -r requirements.txt
echo [$(date)]: "END"




# to remove everything -
# rm -rf env/ .gitignore conda.yaml README.md .git/