# sparse

[Python](https://www.python.org/downloads/ "Download Python") script to set up [git sparse-checkout](https://git-scm.com/docs/git-read-tree#_sparse_checkout) and git-lfs from [YAML](https://yaml.org/) file while cloning repo.

## Usage

- Run `pip install -r requirements.txt`
- Modify `sparse.yml`:
	- add the required [git-lfs Artifactory url with your encrypted password](https://eagleinvsys.atlassian.net/wiki/spaces/SDDEVOPS/pages/938973896/GIT-LFS+Configuration+DO+THIS+FIRST) by following steps 5–10
	- add which subfolders you want (optional, default is only `/src/star_engine/`) 
	- add local directory name (optional)
- Run `python sparse.py` from the parent folder where you keep all your local code e.g. `C:\eagle`

## Commands

This script just automates running the following commands

1. `git clone -n <repo> <directory>`
2. `cd <directory>`
3. `git config lfs.url <lfs>`
4. `git-lfs install`
5. `git config core.sparseCheckout true`
6. `echo <sparse list path> >> .git/info/sparse-checkout`
7. `git checkout HEAD`

where the parameters are stored in the `sparse.yml` file.

To add an additional path after the script is run, from within `<directory>` run the last 2 commands. 