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
                            file_list_html = `<ul><h2 style="color: #43cf30;">Repo Root</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.black" style="color: #d07cd6;">.black</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.editorconfig" style="color: #48976a;">.editorconfig</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.gitignore" style="color: #be8141;">.gitignore</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.hintrc" style="color: #fd95f5;">.hintrc</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.jsbeautifyrc" style="color: #e771b9;">.jsbeautifyrc</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.jscsrc" style="color: #7cc12c;">.jscsrc</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.pre-commit-config.yaml" style="color: #7b8a8b;">.pre-commit-config.yaml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.pre-commit-hooks.yaml" style="color: #dc7fac;">.pre-commit-hooks.yaml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.prettierignore" style="color: #808794;">.prettierignore</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.prettierrc" style="color: #88d0a8;">.prettierrc</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.stylelintrc.json" style="color: #b89a49;">.stylelintrc.json</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vale.ini" style="color: #f799d1;">.vale.ini</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/CNAME" style="color: #3dd42c;">CNAME</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/LaunchZwift.ps1" style="color: #389682;">LaunchZwift.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MonitorZwift-v2.md" style="color: #3af791;">MonitorZwift-v2.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MonitorZwift-v2.ps1" style="color: #6ccbcb;">MonitorZwift-v2.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MonitorZwift-v2.ps1%20-%20Shortcut.lnk" style="color: #56c54b;">MonitorZwift-v2.ps1 - Shortcut.lnk</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MonitorZwift.ps1" style="color: #aecf41;">MonitorZwift.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MoveZwiftCleanPhotos.ps1" style="color: #748e81;">MoveZwiftCleanPhotos.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/README.md" style="color: #b7c6d1;">README.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/SetPrimaryDefault.ps1" style="color: #62beb2;">SetPrimaryDefault.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/SetPrimaryZwift.ps1" style="color: #6ac61d;">SetPrimaryZwift.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/Zwift-Bike-Combos.xlsx" style="color: #4ba01e;">Zwift-Bike-Combos.xlsx</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/Zwift-Setup.lnk" style="color: #9ed41f;">Zwift-Setup.lnk</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/ZwiftSetup.lnk" style="color: #38ab59;">ZwiftSetup.lnk</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/file_list.md" style="color: #2bec1c;">file_list.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/filelist.html" style="color: #af9184;">filelist.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/filelist.md" style="color: #3ce643;">filelist.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sitemap.xml" style="color: #d991c6;">sitemap.xml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/test.ps1" style="color: #d59eb1;">test.ps1</a></li>
<h2 style="color: #66926b;">CSS</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/css/DSNotes.css" style="color: #3eafd6;">sauce4zwift-mod-tippy/pages/css/DSNotes.css</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/css/ui.css" style="color: #6f9968;">sauce4zwift-mod-tippy/pages/css/ui.css</a></li>
<h2 style="color: #9fa801;">JavaScript</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.eslintrc.js" style="color: #937d80;">.eslintrc.js</a></li>
<h2 style="color: #fd7fae;">YAML</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/dependabot.yml" style="color: #42f416;">.github/dependabot.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/labeler.yml" style="color: #96e508;">.github/labeler.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/ActionLint.yml" style="color: #6786f2;">.github/workflows/ActionLint.yml</a></li></ul>`;
                            break;
                        case 'file-list-2':
                            file_list_html = `<ul><li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/codeql.yml" style="color: #a6ad51;">.github/workflows/codeql.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/defender.yml" style="color: #a9cb41;">.github/workflows/defender.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/dependency-review.yml" style="color: #a49506;">.github/workflows/dependency-review.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/generate-file-list.yml" style="color: #e6a874;">.github/workflows/generate-file-list.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/greetings.yml" style="color: #36b525;">.github/workflows/greetings.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/jekyll-gh-pages.yml" style="color: #60e308;">.github/workflows/jekyll-gh-pages.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/label.yml" style="color: #2d9cb0;">.github/workflows/label.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/ossar.yml" style="color: #f4a3e5;">.github/workflows/ossar.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/osv-scanner.yml" style="color: #f5a924;">.github/workflows/osv-scanner.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/scorecards.yml" style="color: #e77502;">.github/workflows/scorecards.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/sitemap.yml" style="color: #63b4ba;">.github/workflows/sitemap.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/stale.yml" style="color: #55ed0e;">.github/workflows/stale.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/static.yml" style="color: #e6952a;">.github/workflows/static.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/super-linter.yml" style="color: #b59d65;">.github/workflows/super-linter.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.markdownlint.yml" style="color: #d176cf;">.markdownlint.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.scss-lint.yml" style="color: #cdb5ac;">.scss-lint.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/_config.yml" style="color: #3b9bfd;">_config.yml</a></li>
<h2 style="color: #3aa4da;">.vscode</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/generate_file_list.py" style="color: #41ca82;">.vscode/generate_file_list.py</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/launch.json" style="color: #e1b764;">.vscode/launch.json</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/settings.json" style="color: #f98fdc;">.vscode/settings.json</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/tasks.json" style="color: #52f427;">.vscode/tasks.json</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/test_generate_file_list.py" style="color: #5b89d4;">.vscode/test_generate_file_list.py</a></li>
<h2 style="color: #a9d3a3;">sauce4zwift-mod-tippy</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/.gitignore" style="color: #b7a039;">sauce4zwift-mod-tippy/.gitignore</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/Change%20Log.txt" style="color: #78d855;">sauce4zwift-mod-tippy/Change Log.txt</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/LICENSE" style="color: #cd9a73;">sauce4zwift-mod-tippy/LICENSE</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/README.md" style="color: #7c7ce4;">sauce4zwift-mod-tippy/README.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/manifest.json" style="color: #24d74d;">sauce4zwift-mod-tippy/manifest.json</a></li>
<h2 style="color: #a579cc;">sauce4zwift-mod-tippy/pages</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/DSNotes.html" style="color: #8ddb86;">sauce4zwift-mod-tippy/pages/DSNotes.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/chaseRace.html" style="color: #fc9495;">sauce4zwift-mod-tippy/pages/chaseRace.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/estimatedCalories.html" style="color: #9880cc;">sauce4zwift-mod-tippy/pages/estimatedCalories.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/estimatedFinish-v1.html" style="color: #e48290;">sauce4zwift-mod-tippy/pages/estimatedFinish-v1.html</a></li>
<h2 style="color: #eba815;">sauce4zwift-mod-tippy/pages/images</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/checker_640.png" style="color: #c87e89;">sauce4zwift-mod-tippy/pages/images/checker_640.png</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/greenConnect.png" style="color: #469bc9;">sauce4zwift-mod-tippy/pages/images/greenConnect.png</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/orangeConnect.png" style="color: #6498ed;">sauce4zwift-mod-tippy/pages/images/orangeConnect.png</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/redConnect.png" style="color: #2ebcba;">sauce4zwift-mod-tippy/pages/images/redConnect.png</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/whiteConnect.png" style="color: #e498d6;">sauce4zwift-mod-tippy/pages/images/whiteConnect.png</a></li></ul>`;
                            break;
                        case 'file-list-3':
                            file_list_html = `<ul><h2 style="color: #9dcec0;">sauce4zwift-mod-tippy/pages/settings</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/settings/DSNotes.html" style="color: #27b5cc;">sauce4zwift-mod-tippy/pages/settings/DSNotes.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/settings/estimatedFinish.html" style="color: #2becba;">sauce4zwift-mod-tippy/pages/settings/estimatedFinish.html</a></li>
<h2 style="color: #cbc909;">sauce4zwift-mod-tippy/pages/src</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/DSNotes.mjs" style="color: #5ce1be;">sauce4zwift-mod-tippy/pages/src/DSNotes.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/chaseRace.mjs" style="color: #bf8235;">sauce4zwift-mod-tippy/pages/src/chaseRace.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/estimatedFinish.mjs" style="color: #63e155;">sauce4zwift-mod-tippy/pages/src/estimatedFinish.mjs</a></li>
<h2 style="color: #d878f3;">sauce4zwift-mod-tippy/pages/src/BM</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/common.mjs" style="color: #53c61a;">sauce4zwift-mod-tippy/pages/src/BM/common.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/dataLookup.mjs" style="color: #31b353;">sauce4zwift-mod-tippy/pages/src/BM/dataLookup.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/notesLookup.mjs" style="color: #80bde9;">sauce4zwift-mod-tippy/pages/src/BM/notesLookup.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/settings.mjs" style="color: #f3bc3e;">sauce4zwift-mod-tippy/pages/src/BM/settings.mjs</a></li>
<h2 style="color: #2da6c3;">sauce4zwift-mod-tippy/src</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/src/estimatedCalories.mjs" style="color: #29c270;">sauce4zwift-mod-tippy/src/estimatedCalories.mjs</a></li>
<h2 style="color: #82949d;">src</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/src/generate_file_list.py" style="color: #d27ae2;">src/generate_file_list.py</a></li>
<h2 style="color: #77bdf5;">tests</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/MonitorZwift-v2.Tests.ps1" style="color: #6cef07;">tests/MonitorZwift-v2.Tests.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/test_OBSActivateAndRecord.ps1" style="color: #80c397;">tests/test_OBSActivateAndRecord.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_LaunchZwift.ps1" style="color: #d3a53d;">tests/tests_LaunchZwift.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_MoveZwiftCleanPhotos.ps1" style="color: #25d4ea;">tests/tests_MoveZwiftCleanPhotos.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_PowerToysAwake.ps1" style="color: #35dab3;">tests/tests_PowerToysAwake.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_SetPrimaryDefault.ps1" style="color: #c172d5;">tests/tests_SetPrimaryDefault.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_SetPrimaryZwift.ps1" style="color: #f96e9e;">tests/tests_SetPrimaryZwift.ps1</a></li>
<h2 style="color: #ae9a4b;">tests/old</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/old/tests_MonitorZwift-v2_3.ps1" style="color: #d8ca03;">tests/old/tests_MonitorZwift-v2_3.ps1</a></li></ul>`;
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
                    file_list_html = `<ul><h2 style="color: #43cf30;">Repo Root</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.black" style="color: #d07cd6;">.black</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.editorconfig" style="color: #48976a;">.editorconfig</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.gitignore" style="color: #be8141;">.gitignore</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.hintrc" style="color: #fd95f5;">.hintrc</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.jsbeautifyrc" style="color: #e771b9;">.jsbeautifyrc</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.jscsrc" style="color: #7cc12c;">.jscsrc</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.pre-commit-config.yaml" style="color: #7b8a8b;">.pre-commit-config.yaml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.pre-commit-hooks.yaml" style="color: #dc7fac;">.pre-commit-hooks.yaml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.prettierignore" style="color: #808794;">.prettierignore</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.prettierrc" style="color: #88d0a8;">.prettierrc</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.stylelintrc.json" style="color: #b89a49;">.stylelintrc.json</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vale.ini" style="color: #f799d1;">.vale.ini</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/CNAME" style="color: #3dd42c;">CNAME</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/LaunchZwift.ps1" style="color: #389682;">LaunchZwift.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MonitorZwift-v2.md" style="color: #3af791;">MonitorZwift-v2.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MonitorZwift-v2.ps1" style="color: #6ccbcb;">MonitorZwift-v2.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MonitorZwift-v2.ps1%20-%20Shortcut.lnk" style="color: #56c54b;">MonitorZwift-v2.ps1 - Shortcut.lnk</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MonitorZwift.ps1" style="color: #aecf41;">MonitorZwift.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MoveZwiftCleanPhotos.ps1" style="color: #748e81;">MoveZwiftCleanPhotos.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/README.md" style="color: #b7c6d1;">README.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/SetPrimaryDefault.ps1" style="color: #62beb2;">SetPrimaryDefault.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/SetPrimaryZwift.ps1" style="color: #6ac61d;">SetPrimaryZwift.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/Zwift-Bike-Combos.xlsx" style="color: #4ba01e;">Zwift-Bike-Combos.xlsx</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/Zwift-Setup.lnk" style="color: #9ed41f;">Zwift-Setup.lnk</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/ZwiftSetup.lnk" style="color: #38ab59;">ZwiftSetup.lnk</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/file_list.md" style="color: #2bec1c;">file_list.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/filelist.html" style="color: #af9184;">filelist.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/filelist.md" style="color: #3ce643;">filelist.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sitemap.xml" style="color: #d991c6;">sitemap.xml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/test.ps1" style="color: #d59eb1;">test.ps1</a></li>
<h2 style="color: #66926b;">CSS</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/css/DSNotes.css" style="color: #3eafd6;">sauce4zwift-mod-tippy/pages/css/DSNotes.css</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/css/ui.css" style="color: #6f9968;">sauce4zwift-mod-tippy/pages/css/ui.css</a></li>
<h2 style="color: #9fa801;">JavaScript</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.eslintrc.js" style="color: #937d80;">.eslintrc.js</a></li>
<h2 style="color: #fd7fae;">YAML</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/dependabot.yml" style="color: #42f416;">.github/dependabot.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/labeler.yml" style="color: #96e508;">.github/labeler.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/ActionLint.yml" style="color: #6786f2;">.github/workflows/ActionLint.yml</a></li></ul>`;
                    break;
                case 'file-list-2':
                    file_list_html = `<ul><li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/codeql.yml" style="color: #a6ad51;">.github/workflows/codeql.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/defender.yml" style="color: #a9cb41;">.github/workflows/defender.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/dependency-review.yml" style="color: #a49506;">.github/workflows/dependency-review.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/generate-file-list.yml" style="color: #e6a874;">.github/workflows/generate-file-list.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/greetings.yml" style="color: #36b525;">.github/workflows/greetings.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/jekyll-gh-pages.yml" style="color: #60e308;">.github/workflows/jekyll-gh-pages.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/label.yml" style="color: #2d9cb0;">.github/workflows/label.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/ossar.yml" style="color: #f4a3e5;">.github/workflows/ossar.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/osv-scanner.yml" style="color: #f5a924;">.github/workflows/osv-scanner.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/scorecards.yml" style="color: #e77502;">.github/workflows/scorecards.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/sitemap.yml" style="color: #63b4ba;">.github/workflows/sitemap.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/stale.yml" style="color: #55ed0e;">.github/workflows/stale.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/static.yml" style="color: #e6952a;">.github/workflows/static.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/super-linter.yml" style="color: #b59d65;">.github/workflows/super-linter.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.markdownlint.yml" style="color: #d176cf;">.markdownlint.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.scss-lint.yml" style="color: #cdb5ac;">.scss-lint.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/_config.yml" style="color: #3b9bfd;">_config.yml</a></li>
<h2 style="color: #3aa4da;">.vscode</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/generate_file_list.py" style="color: #41ca82;">.vscode/generate_file_list.py</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/launch.json" style="color: #e1b764;">.vscode/launch.json</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/settings.json" style="color: #f98fdc;">.vscode/settings.json</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/tasks.json" style="color: #52f427;">.vscode/tasks.json</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/test_generate_file_list.py" style="color: #5b89d4;">.vscode/test_generate_file_list.py</a></li>
<h2 style="color: #a9d3a3;">sauce4zwift-mod-tippy</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/.gitignore" style="color: #b7a039;">sauce4zwift-mod-tippy/.gitignore</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/Change%20Log.txt" style="color: #78d855;">sauce4zwift-mod-tippy/Change Log.txt</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/LICENSE" style="color: #cd9a73;">sauce4zwift-mod-tippy/LICENSE</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/README.md" style="color: #7c7ce4;">sauce4zwift-mod-tippy/README.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/manifest.json" style="color: #24d74d;">sauce4zwift-mod-tippy/manifest.json</a></li>
<h2 style="color: #a579cc;">sauce4zwift-mod-tippy/pages</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/DSNotes.html" style="color: #8ddb86;">sauce4zwift-mod-tippy/pages/DSNotes.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/chaseRace.html" style="color: #fc9495;">sauce4zwift-mod-tippy/pages/chaseRace.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/estimatedCalories.html" style="color: #9880cc;">sauce4zwift-mod-tippy/pages/estimatedCalories.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/estimatedFinish-v1.html" style="color: #e48290;">sauce4zwift-mod-tippy/pages/estimatedFinish-v1.html</a></li>
<h2 style="color: #eba815;">sauce4zwift-mod-tippy/pages/images</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/checker_640.png" style="color: #c87e89;">sauce4zwift-mod-tippy/pages/images/checker_640.png</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/greenConnect.png" style="color: #469bc9;">sauce4zwift-mod-tippy/pages/images/greenConnect.png</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/orangeConnect.png" style="color: #6498ed;">sauce4zwift-mod-tippy/pages/images/orangeConnect.png</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/redConnect.png" style="color: #2ebcba;">sauce4zwift-mod-tippy/pages/images/redConnect.png</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/whiteConnect.png" style="color: #e498d6;">sauce4zwift-mod-tippy/pages/images/whiteConnect.png</a></li></ul>`;
                    break;
                case 'file-list-3':
                    file_list_html = `<ul><h2 style="color: #9dcec0;">sauce4zwift-mod-tippy/pages/settings</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/settings/DSNotes.html" style="color: #27b5cc;">sauce4zwift-mod-tippy/pages/settings/DSNotes.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/settings/estimatedFinish.html" style="color: #2becba;">sauce4zwift-mod-tippy/pages/settings/estimatedFinish.html</a></li>
<h2 style="color: #cbc909;">sauce4zwift-mod-tippy/pages/src</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/DSNotes.mjs" style="color: #5ce1be;">sauce4zwift-mod-tippy/pages/src/DSNotes.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/chaseRace.mjs" style="color: #bf8235;">sauce4zwift-mod-tippy/pages/src/chaseRace.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/estimatedFinish.mjs" style="color: #63e155;">sauce4zwift-mod-tippy/pages/src/estimatedFinish.mjs</a></li>
<h2 style="color: #d878f3;">sauce4zwift-mod-tippy/pages/src/BM</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/common.mjs" style="color: #53c61a;">sauce4zwift-mod-tippy/pages/src/BM/common.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/dataLookup.mjs" style="color: #31b353;">sauce4zwift-mod-tippy/pages/src/BM/dataLookup.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/notesLookup.mjs" style="color: #80bde9;">sauce4zwift-mod-tippy/pages/src/BM/notesLookup.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/settings.mjs" style="color: #f3bc3e;">sauce4zwift-mod-tippy/pages/src/BM/settings.mjs</a></li>
<h2 style="color: #2da6c3;">sauce4zwift-mod-tippy/src</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/src/estimatedCalories.mjs" style="color: #29c270;">sauce4zwift-mod-tippy/src/estimatedCalories.mjs</a></li>
<h2 style="color: #82949d;">src</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/src/generate_file_list.py" style="color: #d27ae2;">src/generate_file_list.py</a></li>
<h2 style="color: #77bdf5;">tests</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/MonitorZwift-v2.Tests.ps1" style="color: #6cef07;">tests/MonitorZwift-v2.Tests.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/test_OBSActivateAndRecord.ps1" style="color: #80c397;">tests/test_OBSActivateAndRecord.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_LaunchZwift.ps1" style="color: #d3a53d;">tests/tests_LaunchZwift.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_MoveZwiftCleanPhotos.ps1" style="color: #25d4ea;">tests/tests_MoveZwiftCleanPhotos.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_PowerToysAwake.ps1" style="color: #35dab3;">tests/tests_PowerToysAwake.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_SetPrimaryDefault.ps1" style="color: #c172d5;">tests/tests_SetPrimaryDefault.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_SetPrimaryZwift.ps1" style="color: #f96e9e;">tests/tests_SetPrimaryZwift.ps1</a></li>
<h2 style="color: #ae9a4b;">tests/old</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/old/tests_MonitorZwift-v2_3.ps1" style="color: #d8ca03;">tests/old/tests_MonitorZwift-v2_3.ps1</a></li></ul>`;
                    break;
            }
            placeholder.innerHTML = file_list_html;
        });
    }
});
</script>

<!-- FILE_LIST_END -->
