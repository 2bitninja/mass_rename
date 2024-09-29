# Contributing to Mass Rename
We welcome contributions to the Mass Rename project! Whether you're reporting a bug, adding a feature, or simply helping with documentation, your help is appreciated. Below is a guide on how you can contribute to the project.
## Getting Started
### 1. Fork the Repository
If you'd like to contribute, first fork the repository to your own GitHub account:
- Navigate to the main repository: [Mass Rename](https://github.com/2bitninja/mass_rename/tree/main)
- Click the "Fork" button in the top-right corner.
### 2. Clone Your Fork
Once you've forked the repository, clone it to your local machine:
```bash
git clone https://github.com/your-username/mass_rename.git
cd mass_rename
```
### 3. Set Up the Project
Ensure that the project is ready to be modified. You will need the following:
- BASH and SED installed on your system (required for running the scripts).
- Optionally, the Python version is available by switching to the [python branch.](https://github.com/2bitninja/mass_rename/tree/python_version).
## Making Changes
Before making any changes, it's best to create a new branch for your work:
```bash
git checkout -b your-branch-name
```
Once you've made your changes, stage them for commit:
```bash
git add .
```
Commit your changes with a descriptive commit message:
```bash
git commit -m "Describe the feature/bugfix in a brief message"
```
Push the changes to your forked repository:
```bash
git push origin your-branch-name
```
Finally, create a pull request (PR) to submit your changes for review.
## Testing Your Changes
If you're contributing code, ensure that your changes are properly tested before submitting a pull request.
### Running Tests
1. Create Dummy Files: If you're testing the `mass_rename.sh` script, use the provided `DummyFileCreater.sh` to generate test files in a `test-dir` folder. For detailed instructions, refer to the [Testing Guide.](testing.md)
2. Run the Mass Rename Script: Follow the steps outlined in the [README](README.md) to execute the renaming process. Test your changes thoroughly to ensure the script behaves as expected.
## Running the Python Version
If you're working with the Python version of the script, switch to the Python branch:
```bash
git checkout python_version
```
Follow the relevant usage instructions for testing your modifications in the Python version.
## Submitting a Pull Request
When your changes are ready and fully tested:
1. Go to the original repository where you'd like to submit your PR.
2. Select "New Pull Request" and choose your branch from your forked repository.
3. Add a clear title and description of what your changes address or improve.
4. Reference any relevant issues if applicable.
5. Submit the pull request.
---
## Code Style
- BASH: Ensure your shell script is clean and readable. Use comments where necessary and follow best practices for writing portable scripts.
- Python (if contributing to the Python branch): Follow PEP 8 guidelines for formatting code.
- Naming Conventions: If contributing to any file renaming functionality, ensure your changes maintain the flexibility and compatibility with media server conventions.
## Reporting Issues
If you find a bug or have a feature request, please open an issue in the repository and provide the following:
- A clear title and description of the issue or feature.
- Steps to reproduce the problem (if applicable).
- Suggestions for a solution (if you have one).

---
Thank you for your interest in improving Mass Rename! Your contributions help make the project better for everyone.