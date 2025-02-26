# ZwiftScripts

A repo for holding various Zwift scripts, mods, etc
<!-- FILE_LIST_START -->
<h1>## File List</h1>

<p># Here is a list of files included in this repository:</p>

<div class="lazyload-placeholder" data-content="file-list-1" style="min-height: 400px;"></div>
<div class="lazyload-placeholder" data-content="file-list-2" style="min-height: 400px;"></div>
<script>
document.addEventListener("DOMContentLoaded", function() {
    const lazyLoadElements = document.querySelectorAll('.lazyload-placeholder');

    if ("IntersectionObserver" in window) {
        let rootMargin = '0px 0px 400px 0px';
        let threshold = 0.5;
        if (window.innerWidth <= 768) {  // Mobile devices
            rootMargin = '0px 0px 100px 0px';
            threshold = 0.1;
        } else if (window.innerWidth <= 1024) {  // Tablets
            rootMargin = '0px 0px 200px 0px';
            threshold = 0.3;
        } else if (window.innerWidth <= 1440) {  // Small desktops
            rootMargin = '0px 0px 300px 0px';
            threshold = 0.4;
        } else {  // Large desktops
            rootMargin = '0px 0px 400px 0px';
            threshold = 0.5;
        }
        let observer = new IntersectionObserver((entries, observer) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    let placeholder = entry.target;
                    let contentId = placeholder.dataset.content;
                    let file_list_html = '';
                    switch(contentId) {
                        case 'file-list-1':
                            file_list_html = `<ul><h2 style="color: #2ccd09;">Repo Root</h2>
- [.black](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.black)
- [.editorconfig](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.editorconfig)
- [.gitignore](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.gitignore)
- [.hintrc](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.hintrc)
- [.jsbeautifyrc](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.jsbeautifyrc)
- [.jscsrc](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.jscsrc)
- [.prettierignore](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.prettierignore)
- [.prettierrc](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.prettierrc)
- [CNAME](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/CNAME)
- [.vale.ini](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vale.ini)
- [.stylelintrc.json](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.stylelintrc.json)
- [Zwift-Setup.lnk](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/Zwift-Setup.lnk)
- [ZwiftSetup.lnk](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/ZwiftSetup.lnk)
- [README.md](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/README.md)
- [LaunchZwift.ps1](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/LaunchZwift.ps1)
- [MonitorZwift.ps1](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/MonitorZwift.ps1)
- [MoveZwiftCleanPhotos.ps1](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/MoveZwiftCleanPhotos.ps1)
- [SetPrimaryDefault.ps1](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/SetPrimaryDefault.ps1)
- [SetPrimaryZwift.ps1](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/SetPrimaryZwift.ps1)
- [Zwift-Bike-Combos.xlsx](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/Zwift-Bike-Combos.xlsx)
- [.pre-commit-config.yaml](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.pre-commit-config.yaml)
- [.pre-commit-hooks.yaml](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.pre-commit-hooks.yaml)
## JavaScript
- [.eslintrc.js](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.eslintrc.js)
## YAML
- [.github/labeler.yml](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/labeler.yml)
- [.github/workflows/ActionLint.yml](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/ActionLint.yml)
- [.github/workflows/defender.yml](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/defender.yml)
- [.github/workflows/dependency-review.yml](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/dependency-review.yml)
- [.github/workflows/generate-file-list.yml](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/generate-file-list.yml)
- [.github/workflows/greetings.yml](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/greetings.yml)
- [.github/workflows/label.yml](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/label.yml)
- [.github/workflows/ossar.yml](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/ossar.yml)
- [.github/workflows/osv-scanner.yml](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/osv-scanner.yml)
- [.github/workflows/sitemap.yml](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/sitemap.yml)
- [.github/workflows/stale.yml](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/stale.yml)
- [.github/workflows/static.yml](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/static.yml)
- [.github/workflows/super-linter.yml](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/super-linter.yml)
- [.markdownlint.yml](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.markdownlint.yml)</ul>`;
                            break;
                        case 'file-list-2':
                            file_list_html = `<ul>- [.scss-lint.yml](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.scss-lint.yml)
- [_config.yml](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/_config.yml)
## .vscode
- [.vscode/launch.json](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/launch.json)
- [.vscode/settings.json](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/settings.json)
- [.vscode/tasks.json](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/tasks.json)
## src
- [src/generate_file_list.py](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/src/generate_file_list.py)</ul>`;
                            break;
                    }
                    placeholder.innerHTML = file_list_html;
                    observer.unobserve(placeholder);
                    console.log(`Loaded content for ${contentId}`);
                }
            });
        }, { rootMargin: rootMargin, threshold: threshold });

        lazyLoadElements.forEach(element => {
            element.style.marginTop = '-17px';
            observer.observe(element);
        });
    } else {
        lazyLoadElements.forEach(placeholder => {
            let contentId = placeholder.dataset.content;
            let file_list_html = '';
            switch(contentId) {
                case 'file-list-1':
                    file_list_html = `<ul><h2 style="color: #2ccd09;">Repo Root</h2>
- [.black](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.black)
- [.editorconfig](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.editorconfig)
- [.gitignore](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.gitignore)
- [.hintrc](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.hintrc)
- [.jsbeautifyrc](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.jsbeautifyrc)
- [.jscsrc](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.jscsrc)
- [.prettierignore](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.prettierignore)
- [.prettierrc](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.prettierrc)
- [CNAME](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/CNAME)
- [.vale.ini](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vale.ini)
- [.stylelintrc.json](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.stylelintrc.json)
- [Zwift-Setup.lnk](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/Zwift-Setup.lnk)
- [ZwiftSetup.lnk](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/ZwiftSetup.lnk)
- [README.md](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/README.md)
- [LaunchZwift.ps1](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/LaunchZwift.ps1)
- [MonitorZwift.ps1](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/MonitorZwift.ps1)
- [MoveZwiftCleanPhotos.ps1](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/MoveZwiftCleanPhotos.ps1)
- [SetPrimaryDefault.ps1](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/SetPrimaryDefault.ps1)
- [SetPrimaryZwift.ps1](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/SetPrimaryZwift.ps1)
- [Zwift-Bike-Combos.xlsx](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/Zwift-Bike-Combos.xlsx)
- [.pre-commit-config.yaml](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.pre-commit-config.yaml)
- [.pre-commit-hooks.yaml](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.pre-commit-hooks.yaml)
## JavaScript
- [.eslintrc.js](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.eslintrc.js)
## YAML
- [.github/labeler.yml](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/labeler.yml)
- [.github/workflows/ActionLint.yml](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/ActionLint.yml)
- [.github/workflows/defender.yml](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/defender.yml)
- [.github/workflows/dependency-review.yml](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/dependency-review.yml)
- [.github/workflows/generate-file-list.yml](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/generate-file-list.yml)
- [.github/workflows/greetings.yml](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/greetings.yml)
- [.github/workflows/label.yml](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/label.yml)
- [.github/workflows/ossar.yml](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/ossar.yml)
- [.github/workflows/osv-scanner.yml](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/osv-scanner.yml)
- [.github/workflows/sitemap.yml](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/sitemap.yml)
- [.github/workflows/stale.yml](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/stale.yml)
- [.github/workflows/static.yml](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/static.yml)
- [.github/workflows/super-linter.yml](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/super-linter.yml)
- [.markdownlint.yml](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.markdownlint.yml)</ul>`;
                    break;
                case 'file-list-2':
                    file_list_html = `<ul>- [.scss-lint.yml](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.scss-lint.yml)
- [_config.yml](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/_config.yml)
## .vscode
- [.vscode/launch.json](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/launch.json)
- [.vscode/settings.json](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/settings.json)
- [.vscode/tasks.json](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/tasks.json)
## src
- [src/generate_file_list.py](https://github.com/Nick2bad4u/ZwiftScripts/blob/main/src/generate_file_list.py)</ul>`;
                    break;
            }
            placeholder.innerHTML = file_list_html;
        });
    }
});
</script>

<!-- FILE_LIST_END -->
