# ZwiftScripts

A repo for holding various Zwift scripts, mods, etc

[![ActionLint](https://github.com/Nick2bad4u/ZwiftScripts/actions/workflows/ActionLint.yml/badge.svg)](https://github.com/Nick2bad4u/ZwiftScripts/actions/workflows/ActionLint.yml)
[![Dependency Review](https://github.com/Nick2bad4u/ZwiftScripts/actions/workflows/dependency-review.yml/badge.svg)](https://github.com/Nick2bad4u/ZwiftScripts/actions/workflows/dependency-review.yml)
[![Deploy static content to Pages](https://github.com/Nick2bad4u/ZwiftScripts/actions/workflows/static.yml/badge.svg)](https://github.com/Nick2bad4u/ZwiftScripts/actions/workflows/static.yml)
[![GitHub Pages - Generate XML sitemap](https://github.com/Nick2bad4u/ZwiftScripts/actions/workflows/sitemap.yml/badge.svg)](https://github.com/Nick2bad4u/ZwiftScripts/actions/workflows/sitemap.yml)
[![Greetings](https://github.com/Nick2bad4u/ZwiftScripts/actions/workflows/greetings.yml/badge.svg)](https://github.com/Nick2bad4u/ZwiftScripts/actions/workflows/greetings.yml)
[![Labeler](https://github.com/Nick2bad4u/ZwiftScripts/actions/workflows/label.yml/badge.svg)](https://github.com/Nick2bad4u/ZwiftScripts/actions/workflows/label.yml)
[![Lint Code Base](https://github.com/Nick2bad4u/ZwiftScripts/actions/workflows/super-linter.yml/badge.svg)](https://github.com/Nick2bad4u/ZwiftScripts/actions/workflows/super-linter.yml)
[![Mark stale issues and pull requests](https://github.com/Nick2bad4u/ZwiftScripts/actions/workflows/stale.yml/badge.svg)](https://github.com/Nick2bad4u/ZwiftScripts/actions/workflows/stale.yml)
[![Microsoft Defender for DevOps](https://github.com/Nick2bad4u/ZwiftScripts/actions/workflows/defender.yml/badge.svg)](https://github.com/Nick2bad4u/ZwiftScripts/actions/workflows/defender.yml)
[![OSSAR](https://github.com/Nick2bad4u/ZwiftScripts/actions/workflows/ossar.yml/badge.svg)](https://github.com/Nick2bad4u/ZwiftScripts/actions/workflows/ossar.yml)
[![OSV-Scanner](https://github.com/Nick2bad4u/ZwiftScripts/actions/workflows/osv-scanner.yml/badge.svg)](https://github.com/Nick2bad4u/ZwiftScripts/actions/workflows/osv-scanner.yml)
[![pages-build-deployment](https://github.com/Nick2bad4u/ZwiftScripts/actions/workflows/pages/pages-build-deployment/badge.svg)](https://github.com/Nick2bad4u/ZwiftScripts/actions/workflows/pages/pages-build-deployment)

![Alt](https://repobeats.axiom.co/api/embed/4b2f7d665ac02f970e3e937dfe43bd14fd6b4b8e.svg "Repobeats analytics image")
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
                            file_list_html = `<ul><h2 style="color: #aa9986;">Repo Root</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.black" style="color: #fe6e83;">.black</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.editorconfig" style="color: #f5c14c;">.editorconfig</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.gitignore" style="color: #e2c573;">.gitignore</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.hintrc" style="color: #59cf8a;">.hintrc</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.jsbeautifyrc" style="color: #bdb7bb;">.jsbeautifyrc</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.jscsrc" style="color: #97d2bb;">.jscsrc</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.pre-commit-config.yaml" style="color: #f9a696;">.pre-commit-config.yaml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.pre-commit-hooks.yaml" style="color: #b87c57;">.pre-commit-hooks.yaml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.prettierignore" style="color: #acbf15;">.prettierignore</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.prettierrc" style="color: #d78854;">.prettierrc</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.stylelintrc.json" style="color: #e58a2d;">.stylelintrc.json</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vale.ini" style="color: #81c7c4;">.vale.ini</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/CNAME" style="color: #e18ab4;">CNAME</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/LaunchZwift.ps1" style="color: #be8b64;">LaunchZwift.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/MonitorZwift-v2.ps1" style="color: #7aab27;">MonitorZwift-v2.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/MonitorZwift.ps1" style="color: #7aa7c2;">MonitorZwift.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/MoveZwiftCleanPhotos.ps1" style="color: #6ad6fa;">MoveZwiftCleanPhotos.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/README.md" style="color: #d88ae9;">README.md</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/SetPrimaryDefault.ps1" style="color: #90cbce;">SetPrimaryDefault.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/SetPrimaryZwift.ps1" style="color: #c3ae49;">SetPrimaryZwift.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/Zwift-Bike-Combos.xlsx" style="color: #69f048;">Zwift-Bike-Combos.xlsx</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/Zwift-Setup.lnk" style="color: #c4af00;">Zwift-Setup.lnk</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/ZwiftSetup.lnk" style="color: #5a9a98;">ZwiftSetup.lnk</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/file_list.md" style="color: #30bf82;">file_list.md</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/filelist.html" style="color: #cc8916;">filelist.html</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/filelist.md" style="color: #229afc;">filelist.md</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sitemap.xml" style="color: #93ad36;">sitemap.xml</a></li>
<h2 style="color: #55aba1;">JavaScript</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.eslintrc.js" style="color: #48e6a7;">.eslintrc.js</a></li>
<h2 style="color: #b2a680;">YAML</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/dependabot.yml" style="color: #44de4c;">.github/dependabot.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/labeler.yml" style="color: #60b925;">.github/labeler.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/ActionLint.yml" style="color: #fb85fa;">.github/workflows/ActionLint.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/codeql.yml" style="color: #e3b494;">.github/workflows/codeql.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/defender.yml" style="color: #57d51b;">.github/workflows/defender.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/dependency-review.yml" style="color: #b5a5c1;">.github/workflows/dependency-review.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/generate-file-list.yml" style="color: #3ba773;">.github/workflows/generate-file-list.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/greetings.yml" style="color: #8ce32e;">.github/workflows/greetings.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/label.yml" style="color: #6c8fb1;">.github/workflows/label.yml</a></li></ul>`;
                            break;
                        case 'file-list-2':
                            file_list_html = `<ul><li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/ossar.yml" style="color: #28d6bf;">.github/workflows/ossar.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/osv-scanner.yml" style="color: #f9a038;">.github/workflows/osv-scanner.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/scorecards.yml" style="color: #fdc704;">.github/workflows/scorecards.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/sitemap.yml" style="color: #b1a1a6;">.github/workflows/sitemap.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/stale.yml" style="color: #6fe84e;">.github/workflows/stale.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/static.yml" style="color: #55b20e;">.github/workflows/static.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/super-linter.yml" style="color: #71d8e1;">.github/workflows/super-linter.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.markdownlint.yml" style="color: #56eab3;">.markdownlint.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.scss-lint.yml" style="color: #aaa093;">.scss-lint.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/_config.yml" style="color: #ca76fd;">_config.yml</a></li>
<h2 style="color: #a6df39;">.vscode</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/generate_file_list.py" style="color: #df85c0;">.vscode/generate_file_list.py</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/launch.json" style="color: #5aae60;">.vscode/launch.json</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/settings.json" style="color: #509bd2;">.vscode/settings.json</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/tasks.json" style="color: #699d9d;">.vscode/tasks.json</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/test_generate_file_list.py" style="color: #cc9477;">.vscode/test_generate_file_list.py</a></li>
<h2 style="color: #4fb3d8;">src</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/src/generate_file_list.py" style="color: #f97091;">src/generate_file_list.py</a></li>
<h2 style="color: #87c503;">tests</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_LaunchZwift.ps1" style="color: #6cdee3;">tests/tests_LaunchZwift.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_LaunchZwift_2.ps1" style="color: #9ed0ca;">tests/tests_LaunchZwift_2.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_MonitorZwift%20copy.ps1" style="color: #9ea3ab;">tests/tests_MonitorZwift copy.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_MonitorZwift-v2.ps1" style="color: #acdf32;">tests/tests_MonitorZwift-v2.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_MonitorZwift-v2_2.ps1" style="color: #df7ac3;">tests/tests_MonitorZwift-v2_2.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_MonitorZwift.ps1" style="color: #98b19a;">tests/tests_MonitorZwift.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_MonitorZwift_2.ps1" style="color: #39ebd1;">tests/tests_MonitorZwift_2.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_MoveZwiftCleanPhotos.ps1" style="color: #9f8c12;">tests/tests_MoveZwiftCleanPhotos.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_SetPrimaryDefault.ps1" style="color: #7790af;">tests/tests_SetPrimaryDefault.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_SetPrimaryZwift.ps1" style="color: #b875a4;">tests/tests_SetPrimaryZwift.ps1</a></li></ul>`;
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
                    file_list_html = `<ul><h2 style="color: #aa9986;">Repo Root</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.black" style="color: #fe6e83;">.black</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.editorconfig" style="color: #f5c14c;">.editorconfig</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.gitignore" style="color: #e2c573;">.gitignore</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.hintrc" style="color: #59cf8a;">.hintrc</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.jsbeautifyrc" style="color: #bdb7bb;">.jsbeautifyrc</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.jscsrc" style="color: #97d2bb;">.jscsrc</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.pre-commit-config.yaml" style="color: #f9a696;">.pre-commit-config.yaml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.pre-commit-hooks.yaml" style="color: #b87c57;">.pre-commit-hooks.yaml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.prettierignore" style="color: #acbf15;">.prettierignore</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.prettierrc" style="color: #d78854;">.prettierrc</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.stylelintrc.json" style="color: #e58a2d;">.stylelintrc.json</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vale.ini" style="color: #81c7c4;">.vale.ini</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/CNAME" style="color: #e18ab4;">CNAME</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/LaunchZwift.ps1" style="color: #be8b64;">LaunchZwift.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/MonitorZwift-v2.ps1" style="color: #7aab27;">MonitorZwift-v2.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/MonitorZwift.ps1" style="color: #7aa7c2;">MonitorZwift.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/MoveZwiftCleanPhotos.ps1" style="color: #6ad6fa;">MoveZwiftCleanPhotos.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/README.md" style="color: #d88ae9;">README.md</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/SetPrimaryDefault.ps1" style="color: #90cbce;">SetPrimaryDefault.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/SetPrimaryZwift.ps1" style="color: #c3ae49;">SetPrimaryZwift.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/Zwift-Bike-Combos.xlsx" style="color: #69f048;">Zwift-Bike-Combos.xlsx</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/Zwift-Setup.lnk" style="color: #c4af00;">Zwift-Setup.lnk</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/ZwiftSetup.lnk" style="color: #5a9a98;">ZwiftSetup.lnk</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/file_list.md" style="color: #30bf82;">file_list.md</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/filelist.html" style="color: #cc8916;">filelist.html</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/filelist.md" style="color: #229afc;">filelist.md</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sitemap.xml" style="color: #93ad36;">sitemap.xml</a></li>
<h2 style="color: #55aba1;">JavaScript</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.eslintrc.js" style="color: #48e6a7;">.eslintrc.js</a></li>
<h2 style="color: #b2a680;">YAML</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/dependabot.yml" style="color: #44de4c;">.github/dependabot.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/labeler.yml" style="color: #60b925;">.github/labeler.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/ActionLint.yml" style="color: #fb85fa;">.github/workflows/ActionLint.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/codeql.yml" style="color: #e3b494;">.github/workflows/codeql.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/defender.yml" style="color: #57d51b;">.github/workflows/defender.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/dependency-review.yml" style="color: #b5a5c1;">.github/workflows/dependency-review.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/generate-file-list.yml" style="color: #3ba773;">.github/workflows/generate-file-list.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/greetings.yml" style="color: #8ce32e;">.github/workflows/greetings.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/label.yml" style="color: #6c8fb1;">.github/workflows/label.yml</a></li></ul>`;
                    break;
                case 'file-list-2':
                    file_list_html = `<ul><li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/ossar.yml" style="color: #28d6bf;">.github/workflows/ossar.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/osv-scanner.yml" style="color: #f9a038;">.github/workflows/osv-scanner.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/scorecards.yml" style="color: #fdc704;">.github/workflows/scorecards.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/sitemap.yml" style="color: #b1a1a6;">.github/workflows/sitemap.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/stale.yml" style="color: #6fe84e;">.github/workflows/stale.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/static.yml" style="color: #55b20e;">.github/workflows/static.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/super-linter.yml" style="color: #71d8e1;">.github/workflows/super-linter.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.markdownlint.yml" style="color: #56eab3;">.markdownlint.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.scss-lint.yml" style="color: #aaa093;">.scss-lint.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/_config.yml" style="color: #ca76fd;">_config.yml</a></li>
<h2 style="color: #a6df39;">.vscode</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/generate_file_list.py" style="color: #df85c0;">.vscode/generate_file_list.py</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/launch.json" style="color: #5aae60;">.vscode/launch.json</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/settings.json" style="color: #509bd2;">.vscode/settings.json</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/tasks.json" style="color: #699d9d;">.vscode/tasks.json</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/test_generate_file_list.py" style="color: #cc9477;">.vscode/test_generate_file_list.py</a></li>
<h2 style="color: #4fb3d8;">src</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/src/generate_file_list.py" style="color: #f97091;">src/generate_file_list.py</a></li>
<h2 style="color: #87c503;">tests</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_LaunchZwift.ps1" style="color: #6cdee3;">tests/tests_LaunchZwift.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_LaunchZwift_2.ps1" style="color: #9ed0ca;">tests/tests_LaunchZwift_2.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_MonitorZwift%20copy.ps1" style="color: #9ea3ab;">tests/tests_MonitorZwift copy.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_MonitorZwift-v2.ps1" style="color: #acdf32;">tests/tests_MonitorZwift-v2.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_MonitorZwift-v2_2.ps1" style="color: #df7ac3;">tests/tests_MonitorZwift-v2_2.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_MonitorZwift.ps1" style="color: #98b19a;">tests/tests_MonitorZwift.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_MonitorZwift_2.ps1" style="color: #39ebd1;">tests/tests_MonitorZwift_2.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_MoveZwiftCleanPhotos.ps1" style="color: #9f8c12;">tests/tests_MoveZwiftCleanPhotos.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_SetPrimaryDefault.ps1" style="color: #7790af;">tests/tests_SetPrimaryDefault.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_SetPrimaryZwift.ps1" style="color: #b875a4;">tests/tests_SetPrimaryZwift.ps1</a></li></ul>`;
                    break;
            }
            placeholder.innerHTML = file_list_html;
        });
    }
});
</script>

<!-- FILE_LIST_END -->
