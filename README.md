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
                            file_list_html = `<ul><h2 style="color: #63c32b;">Repo Root</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.black" style="color: #dac189;">.black</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.editorconfig" style="color: #bb8ccf;">.editorconfig</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.gitignore" style="color: #ff812b;">.gitignore</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.hintrc" style="color: #f78da4;">.hintrc</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.jsbeautifyrc" style="color: #80ca3c;">.jsbeautifyrc</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.jscsrc" style="color: #e9a1cd;">.jscsrc</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.pre-commit-config.yaml" style="color: #af8346;">.pre-commit-config.yaml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.pre-commit-hooks.yaml" style="color: #77a177;">.pre-commit-hooks.yaml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.prettierignore" style="color: #77922d;">.prettierignore</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.prettierrc" style="color: #ca6abc;">.prettierrc</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.stylelintrc.json" style="color: #3ed10e;">.stylelintrc.json</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vale.ini" style="color: #fcb279;">.vale.ini</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/CNAME" style="color: #b9c4c4;">CNAME</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/LaunchZwift.ps1" style="color: #5f9c07;">LaunchZwift.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/MonitorZwift-v2.ps1" style="color: #a187e5;">MonitorZwift-v2.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/MonitorZwift.ps1" style="color: #e89cdd;">MonitorZwift.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/MoveZwiftCleanPhotos.ps1" style="color: #34d834;">MoveZwiftCleanPhotos.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/README.md" style="color: #b98a67;">README.md</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/SetPrimaryDefault.ps1" style="color: #aab4ba;">SetPrimaryDefault.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/SetPrimaryZwift.ps1" style="color: #c06cd1;">SetPrimaryZwift.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/Zwift-Bike-Combos.xlsx" style="color: #c4ade1;">Zwift-Bike-Combos.xlsx</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/Zwift-Setup.lnk" style="color: #fd765b;">Zwift-Setup.lnk</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/ZwiftSetup.lnk" style="color: #9a9bae;">ZwiftSetup.lnk</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/file_list.md" style="color: #4fe98b;">file_list.md</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/filelist.html" style="color: #66dbf9;">filelist.html</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/filelist.md" style="color: #bec7d5;">filelist.md</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sitemap.xml" style="color: #7a8bf1;">sitemap.xml</a></li>
<h2 style="color: #ea648a;">JavaScript</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.eslintrc.js" style="color: #7aa7cb;">.eslintrc.js</a></li>
<h2 style="color: #fc60a5;">YAML</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/dependabot.yml" style="color: #ed79e9;">.github/dependabot.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/labeler.yml" style="color: #c8820e;">.github/labeler.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/ActionLint.yml" style="color: #919eee;">.github/workflows/ActionLint.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/codeql.yml" style="color: #d0931a;">.github/workflows/codeql.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/defender.yml" style="color: #8b8aeb;">.github/workflows/defender.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/dependency-review.yml" style="color: #db79f8;">.github/workflows/dependency-review.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/generate-file-list.yml" style="color: #8880d5;">.github/workflows/generate-file-list.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/greetings.yml" style="color: #83a0ed;">.github/workflows/greetings.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/label.yml" style="color: #85c3d7;">.github/workflows/label.yml</a></li></ul>`;
                            break;
                        case 'file-list-2':
                            file_list_html = `<ul><li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/ossar.yml" style="color: #fa55d0;">.github/workflows/ossar.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/osv-scanner.yml" style="color: #9b9ae1;">.github/workflows/osv-scanner.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/scorecards.yml" style="color: #2ebcb4;">.github/workflows/scorecards.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/sitemap.yml" style="color: #d0715e;">.github/workflows/sitemap.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/stale.yml" style="color: #dbace2;">.github/workflows/stale.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/static.yml" style="color: #72ce50;">.github/workflows/static.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/super-linter.yml" style="color: #d181d1;">.github/workflows/super-linter.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.markdownlint.yml" style="color: #b99041;">.markdownlint.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.scss-lint.yml" style="color: #2af688;">.scss-lint.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/_config.yml" style="color: #3fd1a2;">_config.yml</a></li>
<h2 style="color: #adb8b9;">.vscode</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/generate_file_list.py" style="color: #3ae9dd;">.vscode/generate_file_list.py</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/launch.json" style="color: #2fea6f;">.vscode/launch.json</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/settings.json" style="color: #deb50f;">.vscode/settings.json</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/tasks.json" style="color: #33bd5d;">.vscode/tasks.json</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/test_generate_file_list.py" style="color: #7cba16;">.vscode/test_generate_file_list.py</a></li>
<h2 style="color: #cba3cc;">src</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/src/generate_file_list.py" style="color: #3ae07f;">src/generate_file_list.py</a></li>
<h2 style="color: #2edfc8;">tests</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_LaunchZwift.ps1" style="color: #24ee0d;">tests/tests_LaunchZwift.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_LaunchZwift_2.ps1" style="color: #4dca79;">tests/tests_LaunchZwift_2.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_MonitorZwift%20copy.ps1" style="color: #da8879;">tests/tests_MonitorZwift copy.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_MonitorZwift-v2.ps1" style="color: #9a94c5;">tests/tests_MonitorZwift-v2.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_MonitorZwift-v2_2.ps1" style="color: #a183eb;">tests/tests_MonitorZwift-v2_2.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_MonitorZwift.ps1" style="color: #c8733e;">tests/tests_MonitorZwift.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_MonitorZwift_2.ps1" style="color: #72e67e;">tests/tests_MonitorZwift_2.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_MoveZwiftCleanPhotos.ps1" style="color: #29a32d;">tests/tests_MoveZwiftCleanPhotos.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_SetPrimaryDefault.ps1" style="color: #54fb0c;">tests/tests_SetPrimaryDefault.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_SetPrimaryZwift.ps1" style="color: #5098aa;">tests/tests_SetPrimaryZwift.ps1</a></li></ul>`;
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
                    file_list_html = `<ul><h2 style="color: #63c32b;">Repo Root</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.black" style="color: #dac189;">.black</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.editorconfig" style="color: #bb8ccf;">.editorconfig</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.gitignore" style="color: #ff812b;">.gitignore</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.hintrc" style="color: #f78da4;">.hintrc</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.jsbeautifyrc" style="color: #80ca3c;">.jsbeautifyrc</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.jscsrc" style="color: #e9a1cd;">.jscsrc</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.pre-commit-config.yaml" style="color: #af8346;">.pre-commit-config.yaml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.pre-commit-hooks.yaml" style="color: #77a177;">.pre-commit-hooks.yaml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.prettierignore" style="color: #77922d;">.prettierignore</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.prettierrc" style="color: #ca6abc;">.prettierrc</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.stylelintrc.json" style="color: #3ed10e;">.stylelintrc.json</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vale.ini" style="color: #fcb279;">.vale.ini</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/CNAME" style="color: #b9c4c4;">CNAME</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/LaunchZwift.ps1" style="color: #5f9c07;">LaunchZwift.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/MonitorZwift-v2.ps1" style="color: #a187e5;">MonitorZwift-v2.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/MonitorZwift.ps1" style="color: #e89cdd;">MonitorZwift.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/MoveZwiftCleanPhotos.ps1" style="color: #34d834;">MoveZwiftCleanPhotos.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/README.md" style="color: #b98a67;">README.md</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/SetPrimaryDefault.ps1" style="color: #aab4ba;">SetPrimaryDefault.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/SetPrimaryZwift.ps1" style="color: #c06cd1;">SetPrimaryZwift.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/Zwift-Bike-Combos.xlsx" style="color: #c4ade1;">Zwift-Bike-Combos.xlsx</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/Zwift-Setup.lnk" style="color: #fd765b;">Zwift-Setup.lnk</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/ZwiftSetup.lnk" style="color: #9a9bae;">ZwiftSetup.lnk</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/file_list.md" style="color: #4fe98b;">file_list.md</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/filelist.html" style="color: #66dbf9;">filelist.html</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/filelist.md" style="color: #bec7d5;">filelist.md</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sitemap.xml" style="color: #7a8bf1;">sitemap.xml</a></li>
<h2 style="color: #ea648a;">JavaScript</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.eslintrc.js" style="color: #7aa7cb;">.eslintrc.js</a></li>
<h2 style="color: #fc60a5;">YAML</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/dependabot.yml" style="color: #ed79e9;">.github/dependabot.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/labeler.yml" style="color: #c8820e;">.github/labeler.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/ActionLint.yml" style="color: #919eee;">.github/workflows/ActionLint.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/codeql.yml" style="color: #d0931a;">.github/workflows/codeql.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/defender.yml" style="color: #8b8aeb;">.github/workflows/defender.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/dependency-review.yml" style="color: #db79f8;">.github/workflows/dependency-review.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/generate-file-list.yml" style="color: #8880d5;">.github/workflows/generate-file-list.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/greetings.yml" style="color: #83a0ed;">.github/workflows/greetings.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/label.yml" style="color: #85c3d7;">.github/workflows/label.yml</a></li></ul>`;
                    break;
                case 'file-list-2':
                    file_list_html = `<ul><li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/ossar.yml" style="color: #fa55d0;">.github/workflows/ossar.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/osv-scanner.yml" style="color: #9b9ae1;">.github/workflows/osv-scanner.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/scorecards.yml" style="color: #2ebcb4;">.github/workflows/scorecards.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/sitemap.yml" style="color: #d0715e;">.github/workflows/sitemap.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/stale.yml" style="color: #dbace2;">.github/workflows/stale.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/static.yml" style="color: #72ce50;">.github/workflows/static.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/super-linter.yml" style="color: #d181d1;">.github/workflows/super-linter.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.markdownlint.yml" style="color: #b99041;">.markdownlint.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.scss-lint.yml" style="color: #2af688;">.scss-lint.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/_config.yml" style="color: #3fd1a2;">_config.yml</a></li>
<h2 style="color: #adb8b9;">.vscode</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/generate_file_list.py" style="color: #3ae9dd;">.vscode/generate_file_list.py</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/launch.json" style="color: #2fea6f;">.vscode/launch.json</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/settings.json" style="color: #deb50f;">.vscode/settings.json</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/tasks.json" style="color: #33bd5d;">.vscode/tasks.json</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/test_generate_file_list.py" style="color: #7cba16;">.vscode/test_generate_file_list.py</a></li>
<h2 style="color: #cba3cc;">src</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/src/generate_file_list.py" style="color: #3ae07f;">src/generate_file_list.py</a></li>
<h2 style="color: #2edfc8;">tests</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_LaunchZwift.ps1" style="color: #24ee0d;">tests/tests_LaunchZwift.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_LaunchZwift_2.ps1" style="color: #4dca79;">tests/tests_LaunchZwift_2.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_MonitorZwift%20copy.ps1" style="color: #da8879;">tests/tests_MonitorZwift copy.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_MonitorZwift-v2.ps1" style="color: #9a94c5;">tests/tests_MonitorZwift-v2.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_MonitorZwift-v2_2.ps1" style="color: #a183eb;">tests/tests_MonitorZwift-v2_2.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_MonitorZwift.ps1" style="color: #c8733e;">tests/tests_MonitorZwift.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_MonitorZwift_2.ps1" style="color: #72e67e;">tests/tests_MonitorZwift_2.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_MoveZwiftCleanPhotos.ps1" style="color: #29a32d;">tests/tests_MoveZwiftCleanPhotos.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_SetPrimaryDefault.ps1" style="color: #54fb0c;">tests/tests_SetPrimaryDefault.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_SetPrimaryZwift.ps1" style="color: #5098aa;">tests/tests_SetPrimaryZwift.ps1</a></li></ul>`;
                    break;
            }
            placeholder.innerHTML = file_list_html;
        });
    }
});
</script>

<!-- FILE_LIST_END -->
