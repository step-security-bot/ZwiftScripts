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
                            file_list_html = `<ul><h2 style="color: #c59051;">Repo Root</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.black" style="color: #2bdb73;">.black</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.editorconfig" style="color: #36ca64;">.editorconfig</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.gitignore" style="color: #fe97d5;">.gitignore</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.hintrc" style="color: #5ad8d9;">.hintrc</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.jsbeautifyrc" style="color: #9ea058;">.jsbeautifyrc</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.jscsrc" style="color: #e87468;">.jscsrc</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.pre-commit-config.yaml" style="color: #8edc29;">.pre-commit-config.yaml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.pre-commit-hooks.yaml" style="color: #78af9e;">.pre-commit-hooks.yaml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.prettierignore" style="color: #46e5a3;">.prettierignore</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.prettierrc" style="color: #839b55;">.prettierrc</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.stylelintrc.json" style="color: #2ce5d1;">.stylelintrc.json</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vale.ini" style="color: #a7b903;">.vale.ini</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/CNAME" style="color: #cbb1ee;">CNAME</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/LaunchZwift.ps1" style="color: #b4d281;">LaunchZwift.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/MonitorZwift-v2.ps1" style="color: #a4d07f;">MonitorZwift-v2.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/MonitorZwift.ps1" style="color: #aaa16f;">MonitorZwift.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/MoveZwiftCleanPhotos.ps1" style="color: #2ad5cc;">MoveZwiftCleanPhotos.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/README.md" style="color: #27ddc8;">README.md</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/SetPrimaryDefault.ps1" style="color: #908c55;">SetPrimaryDefault.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/SetPrimaryZwift.ps1" style="color: #49c050;">SetPrimaryZwift.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/Zwift-Bike-Combos.xlsx" style="color: #c6d533;">Zwift-Bike-Combos.xlsx</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/Zwift-Setup.lnk" style="color: #37f965;">Zwift-Setup.lnk</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/ZwiftSetup.lnk" style="color: #6f8d3e;">ZwiftSetup.lnk</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/file_list.md" style="color: #fa79e0;">file_list.md</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/filelist.html" style="color: #9f7b67;">filelist.html</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/filelist.md" style="color: #799a04;">filelist.md</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sitemap.xml" style="color: #7584d1;">sitemap.xml</a></li>
<h2 style="color: #51d525;">JavaScript</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.eslintrc.js" style="color: #d77046;">.eslintrc.js</a></li>
<h2 style="color: #acb414;">YAML</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/dependabot.yml" style="color: #fe6d77;">.github/dependabot.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/labeler.yml" style="color: #2799c6;">.github/labeler.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/ActionLint.yml" style="color: #64b55f;">.github/workflows/ActionLint.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/codeql.yml" style="color: #51d358;">.github/workflows/codeql.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/defender.yml" style="color: #8c9cad;">.github/workflows/defender.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/dependency-review.yml" style="color: #2cf369;">.github/workflows/dependency-review.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/generate-file-list.yml" style="color: #c8a647;">.github/workflows/generate-file-list.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/greetings.yml" style="color: #48d666;">.github/workflows/greetings.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/label.yml" style="color: #b1b251;">.github/workflows/label.yml</a></li></ul>`;
                            break;
                        case 'file-list-2':
                            file_list_html = `<ul><li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/ossar.yml" style="color: #8c8baf;">.github/workflows/ossar.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/osv-scanner.yml" style="color: #36d3ad;">.github/workflows/osv-scanner.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/scorecards.yml" style="color: #3dab5c;">.github/workflows/scorecards.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/sitemap.yml" style="color: #959ecb;">.github/workflows/sitemap.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/stale.yml" style="color: #43bc2f;">.github/workflows/stale.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/static.yml" style="color: #6eba32;">.github/workflows/static.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/super-linter.yml" style="color: #bbce60;">.github/workflows/super-linter.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.markdownlint.yml" style="color: #a69139;">.markdownlint.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.scss-lint.yml" style="color: #5d8bb4;">.scss-lint.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/_config.yml" style="color: #9d8093;">_config.yml</a></li>
<h2 style="color: #c8a22a;">.vscode</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/generate_file_list.py" style="color: #e26f17;">.vscode/generate_file_list.py</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/launch.json" style="color: #56b4f3;">.vscode/launch.json</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/settings.json" style="color: #22b8ec;">.vscode/settings.json</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/tasks.json" style="color: #ccca90;">.vscode/tasks.json</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/test_generate_file_list.py" style="color: #b17bd6;">.vscode/test_generate_file_list.py</a></li>
<h2 style="color: #aae01b;">src</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/src/generate_file_list.py" style="color: #91dc12;">src/generate_file_list.py</a></li>
<h2 style="color: #967cb3;">tests</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/MonitorZwift-v2.Tests.ps1" style="color: #519c06;">tests/MonitorZwift-v2.Tests.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_LaunchZwift.ps1" style="color: #bb988b;">tests/tests_LaunchZwift.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_MoveZwiftCleanPhotos.ps1" style="color: #26daaf;">tests/tests_MoveZwiftCleanPhotos.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_SetPrimaryDefault.ps1" style="color: #6fb898;">tests/tests_SetPrimaryDefault.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_SetPrimaryZwift.ps1" style="color: #a78075;">tests/tests_SetPrimaryZwift.ps1</a></li>
<h2 style="color: #d08d8e;">tests/old</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/old/tests_MonitorZwift-v2_3.ps1" style="color: #ff5df0;">tests/old/tests_MonitorZwift-v2_3.ps1</a></li></ul>`;
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
                    file_list_html = `<ul><h2 style="color: #c59051;">Repo Root</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.black" style="color: #2bdb73;">.black</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.editorconfig" style="color: #36ca64;">.editorconfig</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.gitignore" style="color: #fe97d5;">.gitignore</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.hintrc" style="color: #5ad8d9;">.hintrc</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.jsbeautifyrc" style="color: #9ea058;">.jsbeautifyrc</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.jscsrc" style="color: #e87468;">.jscsrc</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.pre-commit-config.yaml" style="color: #8edc29;">.pre-commit-config.yaml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.pre-commit-hooks.yaml" style="color: #78af9e;">.pre-commit-hooks.yaml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.prettierignore" style="color: #46e5a3;">.prettierignore</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.prettierrc" style="color: #839b55;">.prettierrc</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.stylelintrc.json" style="color: #2ce5d1;">.stylelintrc.json</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vale.ini" style="color: #a7b903;">.vale.ini</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/CNAME" style="color: #cbb1ee;">CNAME</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/LaunchZwift.ps1" style="color: #b4d281;">LaunchZwift.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/MonitorZwift-v2.ps1" style="color: #a4d07f;">MonitorZwift-v2.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/MonitorZwift.ps1" style="color: #aaa16f;">MonitorZwift.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/MoveZwiftCleanPhotos.ps1" style="color: #2ad5cc;">MoveZwiftCleanPhotos.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/README.md" style="color: #27ddc8;">README.md</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/SetPrimaryDefault.ps1" style="color: #908c55;">SetPrimaryDefault.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/SetPrimaryZwift.ps1" style="color: #49c050;">SetPrimaryZwift.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/Zwift-Bike-Combos.xlsx" style="color: #c6d533;">Zwift-Bike-Combos.xlsx</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/Zwift-Setup.lnk" style="color: #37f965;">Zwift-Setup.lnk</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/ZwiftSetup.lnk" style="color: #6f8d3e;">ZwiftSetup.lnk</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/file_list.md" style="color: #fa79e0;">file_list.md</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/filelist.html" style="color: #9f7b67;">filelist.html</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/filelist.md" style="color: #799a04;">filelist.md</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sitemap.xml" style="color: #7584d1;">sitemap.xml</a></li>
<h2 style="color: #51d525;">JavaScript</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.eslintrc.js" style="color: #d77046;">.eslintrc.js</a></li>
<h2 style="color: #acb414;">YAML</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/dependabot.yml" style="color: #fe6d77;">.github/dependabot.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/labeler.yml" style="color: #2799c6;">.github/labeler.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/ActionLint.yml" style="color: #64b55f;">.github/workflows/ActionLint.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/codeql.yml" style="color: #51d358;">.github/workflows/codeql.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/defender.yml" style="color: #8c9cad;">.github/workflows/defender.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/dependency-review.yml" style="color: #2cf369;">.github/workflows/dependency-review.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/generate-file-list.yml" style="color: #c8a647;">.github/workflows/generate-file-list.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/greetings.yml" style="color: #48d666;">.github/workflows/greetings.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/label.yml" style="color: #b1b251;">.github/workflows/label.yml</a></li></ul>`;
                    break;
                case 'file-list-2':
                    file_list_html = `<ul><li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/ossar.yml" style="color: #8c8baf;">.github/workflows/ossar.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/osv-scanner.yml" style="color: #36d3ad;">.github/workflows/osv-scanner.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/scorecards.yml" style="color: #3dab5c;">.github/workflows/scorecards.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/sitemap.yml" style="color: #959ecb;">.github/workflows/sitemap.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/stale.yml" style="color: #43bc2f;">.github/workflows/stale.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/static.yml" style="color: #6eba32;">.github/workflows/static.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/super-linter.yml" style="color: #bbce60;">.github/workflows/super-linter.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.markdownlint.yml" style="color: #a69139;">.markdownlint.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.scss-lint.yml" style="color: #5d8bb4;">.scss-lint.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/_config.yml" style="color: #9d8093;">_config.yml</a></li>
<h2 style="color: #c8a22a;">.vscode</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/generate_file_list.py" style="color: #e26f17;">.vscode/generate_file_list.py</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/launch.json" style="color: #56b4f3;">.vscode/launch.json</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/settings.json" style="color: #22b8ec;">.vscode/settings.json</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/tasks.json" style="color: #ccca90;">.vscode/tasks.json</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/test_generate_file_list.py" style="color: #b17bd6;">.vscode/test_generate_file_list.py</a></li>
<h2 style="color: #aae01b;">src</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/src/generate_file_list.py" style="color: #91dc12;">src/generate_file_list.py</a></li>
<h2 style="color: #967cb3;">tests</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/MonitorZwift-v2.Tests.ps1" style="color: #519c06;">tests/MonitorZwift-v2.Tests.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_LaunchZwift.ps1" style="color: #bb988b;">tests/tests_LaunchZwift.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_MoveZwiftCleanPhotos.ps1" style="color: #26daaf;">tests/tests_MoveZwiftCleanPhotos.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_SetPrimaryDefault.ps1" style="color: #6fb898;">tests/tests_SetPrimaryDefault.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_SetPrimaryZwift.ps1" style="color: #a78075;">tests/tests_SetPrimaryZwift.ps1</a></li>
<h2 style="color: #d08d8e;">tests/old</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/old/tests_MonitorZwift-v2_3.ps1" style="color: #ff5df0;">tests/old/tests_MonitorZwift-v2_3.ps1</a></li></ul>`;
                    break;
            }
            placeholder.innerHTML = file_list_html;
        });
    }
});
</script>

<!-- FILE_LIST_END -->
