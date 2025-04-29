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
                            file_list_html = `<ul><h2 style="color: #578fe4;">Repo Root</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.black" style="color: #69b443;">.black</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.editorconfig" style="color: #e88333;">.editorconfig</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.gitignore" style="color: #cece20;">.gitignore</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.hintrc" style="color: #2fd971;">.hintrc</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.jsbeautifyrc" style="color: #4fc320;">.jsbeautifyrc</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.jscsrc" style="color: #c696a4;">.jscsrc</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.pre-commit-config.yaml" style="color: #6d88ef;">.pre-commit-config.yaml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.pre-commit-hooks.yaml" style="color: #7f94ca;">.pre-commit-hooks.yaml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.prettierignore" style="color: #84b306;">.prettierignore</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.prettierrc" style="color: #c99938;">.prettierrc</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.stylelintrc.json" style="color: #78d7ac;">.stylelintrc.json</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vale.ini" style="color: #b671e3;">.vale.ini</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/CNAME" style="color: #51dbaa;">CNAME</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/LaunchZwift.ps1" style="color: #8287ac;">LaunchZwift.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/MonitorZwift-v2.md" style="color: #40abde;">MonitorZwift-v2.md</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/MonitorZwift-v2.ps1" style="color: #44c3ed;">MonitorZwift-v2.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/MonitorZwift-v2.ps1%20-%20Shortcut.lnk" style="color: #cad20b;">MonitorZwift-v2.ps1 - Shortcut.lnk</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/MonitorZwift.ps1" style="color: #45e847;">MonitorZwift.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/MoveZwiftCleanPhotos.ps1" style="color: #d4c4aa;">MoveZwiftCleanPhotos.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/README.md" style="color: #97adf7;">README.md</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/SetPrimaryDefault.ps1" style="color: #6a8eaf;">SetPrimaryDefault.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/SetPrimaryZwift.ps1" style="color: #998b15;">SetPrimaryZwift.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/Zwift-Bike-Combos.xlsx" style="color: #7cc7a2;">Zwift-Bike-Combos.xlsx</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/Zwift-Setup.lnk" style="color: #fca9bc;">Zwift-Setup.lnk</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/ZwiftSetup.lnk" style="color: #8b9fa2;">ZwiftSetup.lnk</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/file_list.md" style="color: #95b1b8;">file_list.md</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/filelist.html" style="color: #e775a4;">filelist.html</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/filelist.md" style="color: #f784d0;">filelist.md</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sitemap.xml" style="color: #9ac34e;">sitemap.xml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/test.ps1" style="color: #b1c3f2;">test.ps1</a></li>
<h2 style="color: #419fd1;">CSS</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/css/DSNotes.css" style="color: #30dd31;">sauce4zwift-mod-tippy/pages/css/DSNotes.css</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/css/ui.css" style="color: #62c288;">sauce4zwift-mod-tippy/pages/css/ui.css</a></li>
<h2 style="color: #78c882;">JavaScript</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.eslintrc.js" style="color: #9d8038;">.eslintrc.js</a></li>
<h2 style="color: #25c03c;">YAML</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/dependabot.yml" style="color: #6fe139;">.github/dependabot.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/labeler.yml" style="color: #c9b99a;">.github/labeler.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/ActionLint.yml" style="color: #b58f9e;">.github/workflows/ActionLint.yml</a></li></ul>`;
                            break;
                        case 'file-list-2':
                            file_list_html = `<ul><li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/codeql.yml" style="color: #ca9bd8;">.github/workflows/codeql.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/defender.yml" style="color: #d8c1cc;">.github/workflows/defender.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/dependency-review.yml" style="color: #9f824a;">.github/workflows/dependency-review.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/generate-file-list.yml" style="color: #56a250;">.github/workflows/generate-file-list.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/greetings.yml" style="color: #39c75b;">.github/workflows/greetings.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/jekyll-gh-pages.yml" style="color: #2cf1dc;">.github/workflows/jekyll-gh-pages.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/label.yml" style="color: #cc778c;">.github/workflows/label.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/ossar.yml" style="color: #7aa8ee;">.github/workflows/ossar.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/osv-scanner.yml" style="color: #f18aab;">.github/workflows/osv-scanner.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/scorecards.yml" style="color: #34a622;">.github/workflows/scorecards.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/sitemap.yml" style="color: #7cc15f;">.github/workflows/sitemap.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/stale.yml" style="color: #c39076;">.github/workflows/stale.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/static.yml" style="color: #98a216;">.github/workflows/static.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/super-linter.yml" style="color: #53ae78;">.github/workflows/super-linter.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.markdownlint.yml" style="color: #df7c0a;">.markdownlint.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.scss-lint.yml" style="color: #fd8d0c;">.scss-lint.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/_config.yml" style="color: #d1ab87;">_config.yml</a></li>
<h2 style="color: #2eb68d;">.vscode</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/generate_file_list.py" style="color: #afbe52;">.vscode/generate_file_list.py</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/launch.json" style="color: #ee8da3;">.vscode/launch.json</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/settings.json" style="color: #96af8b;">.vscode/settings.json</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/tasks.json" style="color: #d5c744;">.vscode/tasks.json</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/test_generate_file_list.py" style="color: #27e705;">.vscode/test_generate_file_list.py</a></li>
<h2 style="color: #72b0f2;">sauce4zwift-mod-tippy</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/.gitignore" style="color: #839883;">sauce4zwift-mod-tippy/.gitignore</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/Change%20Log.txt" style="color: #e29701;">sauce4zwift-mod-tippy/Change Log.txt</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/LICENSE" style="color: #9da68a;">sauce4zwift-mod-tippy/LICENSE</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/README.md" style="color: #7ecd62;">sauce4zwift-mod-tippy/README.md</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/manifest.json" style="color: #c1c748;">sauce4zwift-mod-tippy/manifest.json</a></li>
<h2 style="color: #34d474;">sauce4zwift-mod-tippy/pages</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/DSNotes.html" style="color: #a7a64e;">sauce4zwift-mod-tippy/pages/DSNotes.html</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/chaseRace.html" style="color: #47de16;">sauce4zwift-mod-tippy/pages/chaseRace.html</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/estimatedCalories.html" style="color: #8a9438;">sauce4zwift-mod-tippy/pages/estimatedCalories.html</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/estimatedFinish-v1.html" style="color: #d48afc;">sauce4zwift-mod-tippy/pages/estimatedFinish-v1.html</a></li>
<h2 style="color: #2bd9e6;">sauce4zwift-mod-tippy/pages/images</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/checker_640.png" style="color: #52ce11;">sauce4zwift-mod-tippy/pages/images/checker_640.png</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/greenConnect.png" style="color: #f48064;">sauce4zwift-mod-tippy/pages/images/greenConnect.png</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/orangeConnect.png" style="color: #879790;">sauce4zwift-mod-tippy/pages/images/orangeConnect.png</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/redConnect.png" style="color: #40b98b;">sauce4zwift-mod-tippy/pages/images/redConnect.png</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/whiteConnect.png" style="color: #84e806;">sauce4zwift-mod-tippy/pages/images/whiteConnect.png</a></li></ul>`;
                            break;
                        case 'file-list-3':
                            file_list_html = `<ul><h2 style="color: #d18520;">sauce4zwift-mod-tippy/pages/settings</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/settings/DSNotes.html" style="color: #6083cd;">sauce4zwift-mod-tippy/pages/settings/DSNotes.html</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/settings/estimatedFinish.html" style="color: #329bc2;">sauce4zwift-mod-tippy/pages/settings/estimatedFinish.html</a></li>
<h2 style="color: #58de6c;">sauce4zwift-mod-tippy/pages/src</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/DSNotes.mjs" style="color: #b88a32;">sauce4zwift-mod-tippy/pages/src/DSNotes.mjs</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/chaseRace.mjs" style="color: #71beb5;">sauce4zwift-mod-tippy/pages/src/chaseRace.mjs</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/estimatedFinish.mjs" style="color: #91bd79;">sauce4zwift-mod-tippy/pages/src/estimatedFinish.mjs</a></li>
<h2 style="color: #93cde7;">sauce4zwift-mod-tippy/pages/src/BM</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/common.mjs" style="color: #6c94b8;">sauce4zwift-mod-tippy/pages/src/BM/common.mjs</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/dataLookup.mjs" style="color: #71c84e;">sauce4zwift-mod-tippy/pages/src/BM/dataLookup.mjs</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/notesLookup.mjs" style="color: #f278eb;">sauce4zwift-mod-tippy/pages/src/BM/notesLookup.mjs</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/settings.mjs" style="color: #b9a9ae;">sauce4zwift-mod-tippy/pages/src/BM/settings.mjs</a></li>
<h2 style="color: #f19b45;">sauce4zwift-mod-tippy/src</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/src/estimatedCalories.mjs" style="color: #5fcf35;">sauce4zwift-mod-tippy/src/estimatedCalories.mjs</a></li>
<h2 style="color: #ecbbb0;">src</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/src/generate_file_list.py" style="color: #53a608;">src/generate_file_list.py</a></li>
<h2 style="color: #e2b0e3;">tests</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/MonitorZwift-v2.Tests.ps1" style="color: #d67e4a;">tests/MonitorZwift-v2.Tests.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_LaunchZwift.ps1" style="color: #a18eb2;">tests/tests_LaunchZwift.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_MoveZwiftCleanPhotos.ps1" style="color: #79bc2b;">tests/tests_MoveZwiftCleanPhotos.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_PowerToysAwake.ps1" style="color: #e87a20;">tests/tests_PowerToysAwake.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_SetPrimaryDefault.ps1" style="color: #5db3f5;">tests/tests_SetPrimaryDefault.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_SetPrimaryZwift.ps1" style="color: #ce6b98;">tests/tests_SetPrimaryZwift.ps1</a></li>
<h2 style="color: #39b7b8;">tests/old</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/old/tests_MonitorZwift-v2_3.ps1" style="color: #fd63cb;">tests/old/tests_MonitorZwift-v2_3.ps1</a></li></ul>`;
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
                    file_list_html = `<ul><h2 style="color: #578fe4;">Repo Root</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.black" style="color: #69b443;">.black</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.editorconfig" style="color: #e88333;">.editorconfig</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.gitignore" style="color: #cece20;">.gitignore</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.hintrc" style="color: #2fd971;">.hintrc</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.jsbeautifyrc" style="color: #4fc320;">.jsbeautifyrc</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.jscsrc" style="color: #c696a4;">.jscsrc</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.pre-commit-config.yaml" style="color: #6d88ef;">.pre-commit-config.yaml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.pre-commit-hooks.yaml" style="color: #7f94ca;">.pre-commit-hooks.yaml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.prettierignore" style="color: #84b306;">.prettierignore</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.prettierrc" style="color: #c99938;">.prettierrc</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.stylelintrc.json" style="color: #78d7ac;">.stylelintrc.json</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vale.ini" style="color: #b671e3;">.vale.ini</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/CNAME" style="color: #51dbaa;">CNAME</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/LaunchZwift.ps1" style="color: #8287ac;">LaunchZwift.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/MonitorZwift-v2.md" style="color: #40abde;">MonitorZwift-v2.md</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/MonitorZwift-v2.ps1" style="color: #44c3ed;">MonitorZwift-v2.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/MonitorZwift-v2.ps1%20-%20Shortcut.lnk" style="color: #cad20b;">MonitorZwift-v2.ps1 - Shortcut.lnk</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/MonitorZwift.ps1" style="color: #45e847;">MonitorZwift.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/MoveZwiftCleanPhotos.ps1" style="color: #d4c4aa;">MoveZwiftCleanPhotos.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/README.md" style="color: #97adf7;">README.md</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/SetPrimaryDefault.ps1" style="color: #6a8eaf;">SetPrimaryDefault.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/SetPrimaryZwift.ps1" style="color: #998b15;">SetPrimaryZwift.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/Zwift-Bike-Combos.xlsx" style="color: #7cc7a2;">Zwift-Bike-Combos.xlsx</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/Zwift-Setup.lnk" style="color: #fca9bc;">Zwift-Setup.lnk</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/ZwiftSetup.lnk" style="color: #8b9fa2;">ZwiftSetup.lnk</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/file_list.md" style="color: #95b1b8;">file_list.md</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/filelist.html" style="color: #e775a4;">filelist.html</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/filelist.md" style="color: #f784d0;">filelist.md</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sitemap.xml" style="color: #9ac34e;">sitemap.xml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/test.ps1" style="color: #b1c3f2;">test.ps1</a></li>
<h2 style="color: #419fd1;">CSS</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/css/DSNotes.css" style="color: #30dd31;">sauce4zwift-mod-tippy/pages/css/DSNotes.css</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/css/ui.css" style="color: #62c288;">sauce4zwift-mod-tippy/pages/css/ui.css</a></li>
<h2 style="color: #78c882;">JavaScript</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.eslintrc.js" style="color: #9d8038;">.eslintrc.js</a></li>
<h2 style="color: #25c03c;">YAML</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/dependabot.yml" style="color: #6fe139;">.github/dependabot.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/labeler.yml" style="color: #c9b99a;">.github/labeler.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/ActionLint.yml" style="color: #b58f9e;">.github/workflows/ActionLint.yml</a></li></ul>`;
                    break;
                case 'file-list-2':
                    file_list_html = `<ul><li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/codeql.yml" style="color: #ca9bd8;">.github/workflows/codeql.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/defender.yml" style="color: #d8c1cc;">.github/workflows/defender.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/dependency-review.yml" style="color: #9f824a;">.github/workflows/dependency-review.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/generate-file-list.yml" style="color: #56a250;">.github/workflows/generate-file-list.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/greetings.yml" style="color: #39c75b;">.github/workflows/greetings.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/jekyll-gh-pages.yml" style="color: #2cf1dc;">.github/workflows/jekyll-gh-pages.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/label.yml" style="color: #cc778c;">.github/workflows/label.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/ossar.yml" style="color: #7aa8ee;">.github/workflows/ossar.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/osv-scanner.yml" style="color: #f18aab;">.github/workflows/osv-scanner.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/scorecards.yml" style="color: #34a622;">.github/workflows/scorecards.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/sitemap.yml" style="color: #7cc15f;">.github/workflows/sitemap.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/stale.yml" style="color: #c39076;">.github/workflows/stale.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/static.yml" style="color: #98a216;">.github/workflows/static.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.github/workflows/super-linter.yml" style="color: #53ae78;">.github/workflows/super-linter.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.markdownlint.yml" style="color: #df7c0a;">.markdownlint.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.scss-lint.yml" style="color: #fd8d0c;">.scss-lint.yml</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/_config.yml" style="color: #d1ab87;">_config.yml</a></li>
<h2 style="color: #2eb68d;">.vscode</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/generate_file_list.py" style="color: #afbe52;">.vscode/generate_file_list.py</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/launch.json" style="color: #ee8da3;">.vscode/launch.json</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/settings.json" style="color: #96af8b;">.vscode/settings.json</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/tasks.json" style="color: #d5c744;">.vscode/tasks.json</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/.vscode/test_generate_file_list.py" style="color: #27e705;">.vscode/test_generate_file_list.py</a></li>
<h2 style="color: #72b0f2;">sauce4zwift-mod-tippy</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/.gitignore" style="color: #839883;">sauce4zwift-mod-tippy/.gitignore</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/Change%20Log.txt" style="color: #e29701;">sauce4zwift-mod-tippy/Change Log.txt</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/LICENSE" style="color: #9da68a;">sauce4zwift-mod-tippy/LICENSE</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/README.md" style="color: #7ecd62;">sauce4zwift-mod-tippy/README.md</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/manifest.json" style="color: #c1c748;">sauce4zwift-mod-tippy/manifest.json</a></li>
<h2 style="color: #34d474;">sauce4zwift-mod-tippy/pages</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/DSNotes.html" style="color: #a7a64e;">sauce4zwift-mod-tippy/pages/DSNotes.html</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/chaseRace.html" style="color: #47de16;">sauce4zwift-mod-tippy/pages/chaseRace.html</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/estimatedCalories.html" style="color: #8a9438;">sauce4zwift-mod-tippy/pages/estimatedCalories.html</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/estimatedFinish-v1.html" style="color: #d48afc;">sauce4zwift-mod-tippy/pages/estimatedFinish-v1.html</a></li>
<h2 style="color: #2bd9e6;">sauce4zwift-mod-tippy/pages/images</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/checker_640.png" style="color: #52ce11;">sauce4zwift-mod-tippy/pages/images/checker_640.png</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/greenConnect.png" style="color: #f48064;">sauce4zwift-mod-tippy/pages/images/greenConnect.png</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/orangeConnect.png" style="color: #879790;">sauce4zwift-mod-tippy/pages/images/orangeConnect.png</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/redConnect.png" style="color: #40b98b;">sauce4zwift-mod-tippy/pages/images/redConnect.png</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/whiteConnect.png" style="color: #84e806;">sauce4zwift-mod-tippy/pages/images/whiteConnect.png</a></li></ul>`;
                    break;
                case 'file-list-3':
                    file_list_html = `<ul><h2 style="color: #d18520;">sauce4zwift-mod-tippy/pages/settings</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/settings/DSNotes.html" style="color: #6083cd;">sauce4zwift-mod-tippy/pages/settings/DSNotes.html</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/settings/estimatedFinish.html" style="color: #329bc2;">sauce4zwift-mod-tippy/pages/settings/estimatedFinish.html</a></li>
<h2 style="color: #58de6c;">sauce4zwift-mod-tippy/pages/src</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/DSNotes.mjs" style="color: #b88a32;">sauce4zwift-mod-tippy/pages/src/DSNotes.mjs</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/chaseRace.mjs" style="color: #71beb5;">sauce4zwift-mod-tippy/pages/src/chaseRace.mjs</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/estimatedFinish.mjs" style="color: #91bd79;">sauce4zwift-mod-tippy/pages/src/estimatedFinish.mjs</a></li>
<h2 style="color: #93cde7;">sauce4zwift-mod-tippy/pages/src/BM</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/common.mjs" style="color: #6c94b8;">sauce4zwift-mod-tippy/pages/src/BM/common.mjs</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/dataLookup.mjs" style="color: #71c84e;">sauce4zwift-mod-tippy/pages/src/BM/dataLookup.mjs</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/notesLookup.mjs" style="color: #f278eb;">sauce4zwift-mod-tippy/pages/src/BM/notesLookup.mjs</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/settings.mjs" style="color: #b9a9ae;">sauce4zwift-mod-tippy/pages/src/BM/settings.mjs</a></li>
<h2 style="color: #f19b45;">sauce4zwift-mod-tippy/src</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/src/estimatedCalories.mjs" style="color: #5fcf35;">sauce4zwift-mod-tippy/src/estimatedCalories.mjs</a></li>
<h2 style="color: #ecbbb0;">src</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/src/generate_file_list.py" style="color: #53a608;">src/generate_file_list.py</a></li>
<h2 style="color: #e2b0e3;">tests</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/MonitorZwift-v2.Tests.ps1" style="color: #d67e4a;">tests/MonitorZwift-v2.Tests.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_LaunchZwift.ps1" style="color: #a18eb2;">tests/tests_LaunchZwift.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_MoveZwiftCleanPhotos.ps1" style="color: #79bc2b;">tests/tests_MoveZwiftCleanPhotos.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_PowerToysAwake.ps1" style="color: #e87a20;">tests/tests_PowerToysAwake.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_SetPrimaryDefault.ps1" style="color: #5db3f5;">tests/tests_SetPrimaryDefault.ps1</a></li>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/tests_SetPrimaryZwift.ps1" style="color: #ce6b98;">tests/tests_SetPrimaryZwift.ps1</a></li>
<h2 style="color: #39b7b8;">tests/old</h2>
<li><a href="https://github.com/Nick2bad4u/ZwiftScripts/blob/main/tests/old/tests_MonitorZwift-v2_3.ps1" style="color: #fd63cb;">tests/old/tests_MonitorZwift-v2_3.ps1</a></li></ul>`;
                    break;
            }
            placeholder.innerHTML = file_list_html;
        });
    }
});
</script>

<!-- FILE_LIST_END -->
