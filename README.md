# Using Google Java Code Format Pre-Commit Hook

Reference:
https://github.com/google/google-java-format

Ideally, a code formatter can do more than just find formatting errors - it should fix them as well. 

### Why use Google Java Code Style?
Essentially the main reason is that Google mantains the tool chain for us, so we don't need to invest any time. Hopefully the formatters are kept updated from their end, and we 


### Step by Step Process

1. Install pre-commit hook in your machine

`brew install pre-commit`

2. In your git repo create a file named `.pre-commit-config.yaml`

  ```
  repos:
  - repo: https://github.com/nipunarora/google-style-precommit-hook
    sha: 9cf7465188a347fda68ee263ef19c0f7df5b41e0
    hooks:
      - id: google-style-java
  ```

3. Install the git hook scripts

  `pre-commit install`
  
  You should see something like
  
  `pre-commit installed at .git/hooks/pre-commit`  

4. (optional) Do a pre-run on all files 

  `pre-commit run --all-files`

5. Do git commits and voila, you are going to enforce auto-formatting


6. In your IntelliJ environment install 

A
[google-java-format IntelliJ plugin](https://plugins.jetbrains.com/plugin/8527)
is available from the plugin repository. To install it, go to your IDE's
settings and select the `Plugins` category. Click the `Marketplace` tab, search
for the `google-java-format` plugin, and click the `Install` button.

The plugin will be disabled by default. To enable it in the current project, go
to `File→Settings...→google-java-format Settings` (or `IntelliJ
IDEA→Preferences...→Other Settings→google-java-format Settings` on macOS) and
check the `Enable google-java-format` checkbox. (A notification will be
presented when you first open a project offering to do this for you.)

To enable it by default in new projects, use `File→Other Settings→Default
Settings...`.

When enabled, it will replace the normal `Reformat Code` action, which can be
triggered from the `Code` menu or with the Ctrl-Alt-L (by default) keyboard
shortcut.

The import ordering is not handled by this plugin, unfortunately. To fix the
import order, download the
[IntelliJ Java Google Style file](https://raw.githubusercontent.com/google/styleguide/gh-pages/intellij-java-google-style.xml)
and import it into File→Settings→Editor→Code Style.
