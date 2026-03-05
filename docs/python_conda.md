# 🐍 Python & Conda Management

Best practices for managing environments and dependencies for your research.

## 1. Basic Environment Setup
Always create a dedicated environment for each project:
```bash
conda create -n my_project python=3.10
conda activate my_project
```

## 2. Installing Packages
Prefer using `conda` for data science packages and `pip` for everything else:
```bash
conda install numpy pandas matplotlib
pip install -r requirements.txt
```

## 3. Saving & Exporting
To share or backup your environment:
```bash
conda env export > environment.yml
```

## 4. Common Fixes
- **Slow Solves**: Use `mamba` instead of `conda` for much faster package resolution.
- **Kernel Not Found**: If your environment isn't showing up in Jupyter:
  ```bash
  pip install ipykernel
  python -m ipykernel install --user --name my_project
  ```
