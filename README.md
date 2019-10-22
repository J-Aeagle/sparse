# sparse

[Python](https://www.python.org/downloads/ "Download Python") script to set up [git sparse-checkout](https://git-scm.com/docs/git-read-tree#_sparse_checkout) from [YAML](https://yaml.org/) file.

## Usage

- Run `pip install -r requirements.txt`
- Modify `sparse.yml` as desired for which subfolders you want (default is only `/src/star_engine/`) and local directory name
- Run `python sparse.py` from the parent folder where you keep all your local code e.g. `C:\eagle`