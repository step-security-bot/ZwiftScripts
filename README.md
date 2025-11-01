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
<div class="lazyload-placeholder" data-content="file-list-3" style="min-height: 400px;"></div>
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
                            file_list_html = `<ul><h2 style="color: #2af43f;">Repo Root</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.black" style="color: #35b6ed;">.black</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.editorconfig" style="color: #30c45e;">.editorconfig</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.gitignore" style="color: #32d35e;">.gitignore</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.hintrc" style="color: #bb8eb3;">.hintrc</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.jsbeautifyrc" style="color: #d4b605;">.jsbeautifyrc</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.jscsrc" style="color: #b3a8f2;">.jscsrc</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.pre-commit-config.yaml" style="color: #7e9e3a;">.pre-commit-config.yaml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.pre-commit-hooks.yaml" style="color: #2bc895;">.pre-commit-hooks.yaml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.prettierignore" style="color: #89d873;">.prettierignore</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.prettierrc" style="color: #a8a1b9;">.prettierrc</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.stylelintrc.json" style="color: #e1aab5;">.stylelintrc.json</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vale.ini" style="color: #46d6a3;">.vale.ini</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/CNAME" style="color: #a5e039;">CNAME</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/LaunchZwift.ps1" style="color: #88d882;">LaunchZwift.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MonitorZwift-v2.md" style="color: #858731;">MonitorZwift-v2.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MonitorZwift-v2.ps1" style="color: #3db065;">MonitorZwift-v2.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MonitorZwift-v2.ps1%20-%20Shortcut.lnk" style="color: #aece47;">MonitorZwift-v2.ps1 - Shortcut.lnk</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MonitorZwift.ps1" style="color: #cb6c77;">MonitorZwift.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MoveZwiftCleanPhotos.ps1" style="color: #7a8b6d;">MoveZwiftCleanPhotos.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/README.md" style="color: #cb7cef;">README.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/SetPrimaryDefault.ps1" style="color: #af7c71;">SetPrimaryDefault.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/SetPrimaryZwift.ps1" style="color: #a2c728;">SetPrimaryZwift.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/Zwift-Bike-Combos.xlsx" style="color: #d49d11;">Zwift-Bike-Combos.xlsx</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/Zwift-Setup.lnk" style="color: #d3afb4;">Zwift-Setup.lnk</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/ZwiftSetup.lnk" style="color: #9bc1a5;">ZwiftSetup.lnk</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/file_list.md" style="color: #f1afbb;">file_list.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/filelist.html" style="color: #c895ae;">filelist.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/filelist.md" style="color: #e272d9;">filelist.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sitemap.xml" style="color: #fd8ee5;">sitemap.xml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/test.ps1" style="color: #c5b7b9;">test.ps1</a></li>
<h2 style="color: #d1a98f;">CSS</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/css/DSNotes.css" style="color: #4abd16;">sauce4zwift-mod-tippy/pages/css/DSNotes.css</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/css/ui.css" style="color: #81b992;">sauce4zwift-mod-tippy/pages/css/ui.css</a></li>
<h2 style="color: #adbc71;">JavaScript</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.eslintrc.js" style="color: #d19f3f;">.eslintrc.js</a></li>
<h2 style="color: #74f21c;">YAML</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/dependabot.yml" style="color: #d8b2aa;">.github/dependabot.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/labeler.yml" style="color: #9ddc07;">.github/labeler.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/ActionLint.yml" style="color: #51a4e6;">.github/workflows/ActionLint.yml</a></li></ul>`;
                            break;
                        case 'file-list-2':
                            file_list_html = `<ul><li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/codeql.yml" style="color: #c4bc40;">.github/workflows/codeql.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/defender.yml" style="color: #bcaac4;">.github/workflows/defender.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/dependency-review.yml" style="color: #2af309;">.github/workflows/dependency-review.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/generate-file-list.yml" style="color: #47dafa;">.github/workflows/generate-file-list.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/greetings.yml" style="color: #b1bf6f;">.github/workflows/greetings.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/jekyll-gh-pages.yml" style="color: #b6778a;">.github/workflows/jekyll-gh-pages.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/label.yml" style="color: #f48cb6;">.github/workflows/label.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/ossar.yml" style="color: #4ea333;">.github/workflows/ossar.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/osv-scanner.yml" style="color: #49a9a2;">.github/workflows/osv-scanner.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/scorecards.yml" style="color: #c5a22f;">.github/workflows/scorecards.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/sitemap.yml" style="color: #36bf19;">.github/workflows/sitemap.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/stale.yml" style="color: #ced040;">.github/workflows/stale.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/static.yml" style="color: #a8b1c0;">.github/workflows/static.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/super-linter.yml" style="color: #a6cc59;">.github/workflows/super-linter.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.markdownlint.yml" style="color: #f8b708;">.markdownlint.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.scss-lint.yml" style="color: #9b97a0;">.scss-lint.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/_config.yml" style="color: #6eb1e9;">_config.yml</a></li>
<h2 style="color: #b591db;">.vscode</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/generate_file_list.py" style="color: #d0aeb3;">.vscode/generate_file_list.py</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/launch.json" style="color: #bea8b8;">.vscode/launch.json</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/settings.json" style="color: #c9cd1c;">.vscode/settings.json</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/tasks.json" style="color: #23bfd3;">.vscode/tasks.json</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/test_generate_file_list.py" style="color: #71c455;">.vscode/test_generate_file_list.py</a></li>
<h2 style="color: #c7b829;">sauce4zwift-mod-tippy</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/.gitignore" style="color: #87b04a;">sauce4zwift-mod-tippy/.gitignore</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/Change%20Log.txt" style="color: #a3a134;">sauce4zwift-mod-tippy/Change Log.txt</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/LICENSE" style="color: #48f36f;">sauce4zwift-mod-tippy/LICENSE</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/README.md" style="color: #25f3be;">sauce4zwift-mod-tippy/README.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/manifest.json" style="color: #53cf08;">sauce4zwift-mod-tippy/manifest.json</a></li>
<h2 style="color: #bcc5db;">sauce4zwift-mod-tippy/pages</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/DSNotes.html" style="color: #c9c78d;">sauce4zwift-mod-tippy/pages/DSNotes.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/chaseRace.html" style="color: #dacc18;">sauce4zwift-mod-tippy/pages/chaseRace.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/estimatedCalories.html" style="color: #e091ce;">sauce4zwift-mod-tippy/pages/estimatedCalories.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/estimatedFinish-v1.html" style="color: #d2c2a5;">sauce4zwift-mod-tippy/pages/estimatedFinish-v1.html</a></li>
<h2 style="color: #4b8eed;">sauce4zwift-mod-tippy/pages/images</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/checker_640.png" style="color: #a3cb03;">sauce4zwift-mod-tippy/pages/images/checker_640.png</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/greenConnect.png" style="color: #6ce42b;">sauce4zwift-mod-tippy/pages/images/greenConnect.png</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/orangeConnect.png" style="color: #70a174;">sauce4zwift-mod-tippy/pages/images/orangeConnect.png</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/redConnect.png" style="color: #f0acbb;">sauce4zwift-mod-tippy/pages/images/redConnect.png</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/whiteConnect.png" style="color: #ff7162;">sauce4zwift-mod-tippy/pages/images/whiteConnect.png</a></li></ul>`;
                            break;
                        case 'file-list-3':
                            file_list_html = `<ul><h2 style="color: #8577d4;">sauce4zwift-mod-tippy/pages/settings</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/settings/DSNotes.html" style="color: #5aa8ec;">sauce4zwift-mod-tippy/pages/settings/DSNotes.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/settings/estimatedFinish.html" style="color: #9daf77;">sauce4zwift-mod-tippy/pages/settings/estimatedFinish.html</a></li>
<h2 style="color: #93c337;">sauce4zwift-mod-tippy/pages/src</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/DSNotes.mjs" style="color: #bdba05;">sauce4zwift-mod-tippy/pages/src/DSNotes.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/chaseRace.mjs" style="color: #aca583;">sauce4zwift-mod-tippy/pages/src/chaseRace.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/estimatedFinish.mjs" style="color: #cac54d;">sauce4zwift-mod-tippy/pages/src/estimatedFinish.mjs</a></li>
<h2 style="color: #93acd9;">sauce4zwift-mod-tippy/pages/src/BM</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/common.mjs" style="color: #53dde6;">sauce4zwift-mod-tippy/pages/src/BM/common.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/dataLookup.mjs" style="color: #c8c932;">sauce4zwift-mod-tippy/pages/src/BM/dataLookup.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/notesLookup.mjs" style="color: #b1b691;">sauce4zwift-mod-tippy/pages/src/BM/notesLookup.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/settings.mjs" style="color: #f29ff8;">sauce4zwift-mod-tippy/pages/src/BM/settings.mjs</a></li>
<h2 style="color: #949b6c;">sauce4zwift-mod-tippy/src</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/src/estimatedCalories.mjs" style="color: #31f61f;">sauce4zwift-mod-tippy/src/estimatedCalories.mjs</a></li>
<h2 style="color: #529552;">src</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/src/generate_file_list.py" style="color: #a3c9f1;">src/generate_file_list.py</a></li>
<h2 style="color: #4ee20d;">tests</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/MonitorZwift-v2.Tests.ps1" style="color: #73bac5;">tests/MonitorZwift-v2.Tests.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/test_OBSActivateAndRecord.ps1" style="color: #6ebc93;">tests/test_OBSActivateAndRecord.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_LaunchZwift.ps1" style="color: #46b471;">tests/tests_LaunchZwift.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_MoveZwiftCleanPhotos.ps1" style="color: #a79db7;">tests/tests_MoveZwiftCleanPhotos.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_PowerToysAwake.ps1" style="color: #cb817c;">tests/tests_PowerToysAwake.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_SetPrimaryDefault.ps1" style="color: #71acd8;">tests/tests_SetPrimaryDefault.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_SetPrimaryZwift.ps1" style="color: #ed8a0c;">tests/tests_SetPrimaryZwift.ps1</a></li>
<h2 style="color: #2aa93f;">tests/old</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/old/tests_MonitorZwift-v2_3.ps1" style="color: #e39ae7;">tests/old/tests_MonitorZwift-v2_3.ps1</a></li></ul>`;
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
                    file_list_html = `<ul><h2 style="color: #2af43f;">Repo Root</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.black" style="color: #35b6ed;">.black</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.editorconfig" style="color: #30c45e;">.editorconfig</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.gitignore" style="color: #32d35e;">.gitignore</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.hintrc" style="color: #bb8eb3;">.hintrc</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.jsbeautifyrc" style="color: #d4b605;">.jsbeautifyrc</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.jscsrc" style="color: #b3a8f2;">.jscsrc</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.pre-commit-config.yaml" style="color: #7e9e3a;">.pre-commit-config.yaml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.pre-commit-hooks.yaml" style="color: #2bc895;">.pre-commit-hooks.yaml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.prettierignore" style="color: #89d873;">.prettierignore</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.prettierrc" style="color: #a8a1b9;">.prettierrc</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.stylelintrc.json" style="color: #e1aab5;">.stylelintrc.json</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vale.ini" style="color: #46d6a3;">.vale.ini</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/CNAME" style="color: #a5e039;">CNAME</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/LaunchZwift.ps1" style="color: #88d882;">LaunchZwift.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MonitorZwift-v2.md" style="color: #858731;">MonitorZwift-v2.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MonitorZwift-v2.ps1" style="color: #3db065;">MonitorZwift-v2.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MonitorZwift-v2.ps1%20-%20Shortcut.lnk" style="color: #aece47;">MonitorZwift-v2.ps1 - Shortcut.lnk</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MonitorZwift.ps1" style="color: #cb6c77;">MonitorZwift.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MoveZwiftCleanPhotos.ps1" style="color: #7a8b6d;">MoveZwiftCleanPhotos.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/README.md" style="color: #cb7cef;">README.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/SetPrimaryDefault.ps1" style="color: #af7c71;">SetPrimaryDefault.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/SetPrimaryZwift.ps1" style="color: #a2c728;">SetPrimaryZwift.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/Zwift-Bike-Combos.xlsx" style="color: #d49d11;">Zwift-Bike-Combos.xlsx</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/Zwift-Setup.lnk" style="color: #d3afb4;">Zwift-Setup.lnk</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/ZwiftSetup.lnk" style="color: #9bc1a5;">ZwiftSetup.lnk</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/file_list.md" style="color: #f1afbb;">file_list.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/filelist.html" style="color: #c895ae;">filelist.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/filelist.md" style="color: #e272d9;">filelist.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sitemap.xml" style="color: #fd8ee5;">sitemap.xml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/test.ps1" style="color: #c5b7b9;">test.ps1</a></li>
<h2 style="color: #d1a98f;">CSS</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/css/DSNotes.css" style="color: #4abd16;">sauce4zwift-mod-tippy/pages/css/DSNotes.css</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/css/ui.css" style="color: #81b992;">sauce4zwift-mod-tippy/pages/css/ui.css</a></li>
<h2 style="color: #adbc71;">JavaScript</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.eslintrc.js" style="color: #d19f3f;">.eslintrc.js</a></li>
<h2 style="color: #74f21c;">YAML</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/dependabot.yml" style="color: #d8b2aa;">.github/dependabot.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/labeler.yml" style="color: #9ddc07;">.github/labeler.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/ActionLint.yml" style="color: #51a4e6;">.github/workflows/ActionLint.yml</a></li></ul>`;
                    break;
                case 'file-list-2':
                    file_list_html = `<ul><li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/codeql.yml" style="color: #c4bc40;">.github/workflows/codeql.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/defender.yml" style="color: #bcaac4;">.github/workflows/defender.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/dependency-review.yml" style="color: #2af309;">.github/workflows/dependency-review.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/generate-file-list.yml" style="color: #47dafa;">.github/workflows/generate-file-list.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/greetings.yml" style="color: #b1bf6f;">.github/workflows/greetings.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/jekyll-gh-pages.yml" style="color: #b6778a;">.github/workflows/jekyll-gh-pages.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/label.yml" style="color: #f48cb6;">.github/workflows/label.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/ossar.yml" style="color: #4ea333;">.github/workflows/ossar.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/osv-scanner.yml" style="color: #49a9a2;">.github/workflows/osv-scanner.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/scorecards.yml" style="color: #c5a22f;">.github/workflows/scorecards.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/sitemap.yml" style="color: #36bf19;">.github/workflows/sitemap.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/stale.yml" style="color: #ced040;">.github/workflows/stale.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/static.yml" style="color: #a8b1c0;">.github/workflows/static.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/super-linter.yml" style="color: #a6cc59;">.github/workflows/super-linter.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.markdownlint.yml" style="color: #f8b708;">.markdownlint.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.scss-lint.yml" style="color: #9b97a0;">.scss-lint.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/_config.yml" style="color: #6eb1e9;">_config.yml</a></li>
<h2 style="color: #b591db;">.vscode</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/generate_file_list.py" style="color: #d0aeb3;">.vscode/generate_file_list.py</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/launch.json" style="color: #bea8b8;">.vscode/launch.json</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/settings.json" style="color: #c9cd1c;">.vscode/settings.json</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/tasks.json" style="color: #23bfd3;">.vscode/tasks.json</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/test_generate_file_list.py" style="color: #71c455;">.vscode/test_generate_file_list.py</a></li>
<h2 style="color: #c7b829;">sauce4zwift-mod-tippy</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/.gitignore" style="color: #87b04a;">sauce4zwift-mod-tippy/.gitignore</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/Change%20Log.txt" style="color: #a3a134;">sauce4zwift-mod-tippy/Change Log.txt</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/LICENSE" style="color: #48f36f;">sauce4zwift-mod-tippy/LICENSE</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/README.md" style="color: #25f3be;">sauce4zwift-mod-tippy/README.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/manifest.json" style="color: #53cf08;">sauce4zwift-mod-tippy/manifest.json</a></li>
<h2 style="color: #bcc5db;">sauce4zwift-mod-tippy/pages</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/DSNotes.html" style="color: #c9c78d;">sauce4zwift-mod-tippy/pages/DSNotes.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/chaseRace.html" style="color: #dacc18;">sauce4zwift-mod-tippy/pages/chaseRace.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/estimatedCalories.html" style="color: #e091ce;">sauce4zwift-mod-tippy/pages/estimatedCalories.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/estimatedFinish-v1.html" style="color: #d2c2a5;">sauce4zwift-mod-tippy/pages/estimatedFinish-v1.html</a></li>
<h2 style="color: #4b8eed;">sauce4zwift-mod-tippy/pages/images</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/checker_640.png" style="color: #a3cb03;">sauce4zwift-mod-tippy/pages/images/checker_640.png</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/greenConnect.png" style="color: #6ce42b;">sauce4zwift-mod-tippy/pages/images/greenConnect.png</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/orangeConnect.png" style="color: #70a174;">sauce4zwift-mod-tippy/pages/images/orangeConnect.png</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/redConnect.png" style="color: #f0acbb;">sauce4zwift-mod-tippy/pages/images/redConnect.png</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/whiteConnect.png" style="color: #ff7162;">sauce4zwift-mod-tippy/pages/images/whiteConnect.png</a></li></ul>`;
                    break;
                case 'file-list-3':
                    file_list_html = `<ul><h2 style="color: #8577d4;">sauce4zwift-mod-tippy/pages/settings</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/settings/DSNotes.html" style="color: #5aa8ec;">sauce4zwift-mod-tippy/pages/settings/DSNotes.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/settings/estimatedFinish.html" style="color: #9daf77;">sauce4zwift-mod-tippy/pages/settings/estimatedFinish.html</a></li>
<h2 style="color: #93c337;">sauce4zwift-mod-tippy/pages/src</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/DSNotes.mjs" style="color: #bdba05;">sauce4zwift-mod-tippy/pages/src/DSNotes.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/chaseRace.mjs" style="color: #aca583;">sauce4zwift-mod-tippy/pages/src/chaseRace.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/estimatedFinish.mjs" style="color: #cac54d;">sauce4zwift-mod-tippy/pages/src/estimatedFinish.mjs</a></li>
<h2 style="color: #93acd9;">sauce4zwift-mod-tippy/pages/src/BM</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/common.mjs" style="color: #53dde6;">sauce4zwift-mod-tippy/pages/src/BM/common.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/dataLookup.mjs" style="color: #c8c932;">sauce4zwift-mod-tippy/pages/src/BM/dataLookup.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/notesLookup.mjs" style="color: #b1b691;">sauce4zwift-mod-tippy/pages/src/BM/notesLookup.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/settings.mjs" style="color: #f29ff8;">sauce4zwift-mod-tippy/pages/src/BM/settings.mjs</a></li>
<h2 style="color: #949b6c;">sauce4zwift-mod-tippy/src</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/src/estimatedCalories.mjs" style="color: #31f61f;">sauce4zwift-mod-tippy/src/estimatedCalories.mjs</a></li>
<h2 style="color: #529552;">src</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/src/generate_file_list.py" style="color: #a3c9f1;">src/generate_file_list.py</a></li>
<h2 style="color: #4ee20d;">tests</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/MonitorZwift-v2.Tests.ps1" style="color: #73bac5;">tests/MonitorZwift-v2.Tests.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/test_OBSActivateAndRecord.ps1" style="color: #6ebc93;">tests/test_OBSActivateAndRecord.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_LaunchZwift.ps1" style="color: #46b471;">tests/tests_LaunchZwift.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_MoveZwiftCleanPhotos.ps1" style="color: #a79db7;">tests/tests_MoveZwiftCleanPhotos.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_PowerToysAwake.ps1" style="color: #cb817c;">tests/tests_PowerToysAwake.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_SetPrimaryDefault.ps1" style="color: #71acd8;">tests/tests_SetPrimaryDefault.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_SetPrimaryZwift.ps1" style="color: #ed8a0c;">tests/tests_SetPrimaryZwift.ps1</a></li>
<h2 style="color: #2aa93f;">tests/old</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/old/tests_MonitorZwift-v2_3.ps1" style="color: #e39ae7;">tests/old/tests_MonitorZwift-v2_3.ps1</a></li></ul>`;
                    break;
            }
            placeholder.innerHTML = file_list_html;
        });
    }
});
</script>

<!-- FILE_LIST_END -->
