# sparse

Python [(download if not installed)](https://www.python.org/downloads/ "Download Python") script to set up [git sparse-checkout](https://git-scm.com/docs/git-read-tree#_sparse_checkout) and git-lfs from [YAML](https://yaml.org/) file while cloning repo.  (Alternate batch and shell scripts included.)

## Usage

- Run `pip3 install -r requirements.txt`
- Modify `sparse.yml`:
	- add the required [git-lfs Artifactory url with your encrypted password](https://artifactory.devops.eagleinvsys.com/ui/repos/tree/General/sd-core-17-lfs) by [following steps 5–10](https://eagleinvsys.atlassian.net/wiki/spaces/ENGOPS/pages/1263863786/GIT-LFS+Configuration+DO+THIS+FIRST)
	- add which subfolders you want (optional, default is only `/src/star_engine/`) 
	- add local directory name (optional)
- Run `py sparse.py` (Windows) or `chmod +x sparse.py` then `./sparse.py` (Linux) from the parent folder where you keep all your local code e.g. `C:\eagle`

## Commands

This script just automates running the following commands

    git clone -n <repo> <directory>
    cd <directory>
    git lfs install
    git config lfs.url <lfs>
    git config core.sparseCheckout true
    echo <sparse list path> >> .git/info/sparse-checkout
    git checkout HEAD

where the parameters are stored in the `sparse.yml` file.

To run these commands directly, you can modify the lfs url in the batch file (`sparse.bat`) on Windows or shell script (`chmod +x sparse.sh` then `sparse.sh`) on Linux then run it.

To add an additional path after the script is run, from within `<directory>` run the last 2 commands.