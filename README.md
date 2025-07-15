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
                            file_list_html = `<ul><h2 style="color: #ec6679;">Repo Root</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.black" style="color: #59f628;">.black</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.editorconfig" style="color: #61d78d;">.editorconfig</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.gitignore" style="color: #74a86a;">.gitignore</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.hintrc" style="color: #56ee72;">.hintrc</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.jsbeautifyrc" style="color: #6ada3a;">.jsbeautifyrc</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.jscsrc" style="color: #85dad7;">.jscsrc</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.pre-commit-config.yaml" style="color: #5ecaee;">.pre-commit-config.yaml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.pre-commit-hooks.yaml" style="color: #55cf15;">.pre-commit-hooks.yaml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.prettierignore" style="color: #4df36c;">.prettierignore</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.prettierrc" style="color: #3bb88d;">.prettierrc</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.stylelintrc.json" style="color: #a97c6a;">.stylelintrc.json</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vale.ini" style="color: #498feb;">.vale.ini</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/CNAME" style="color: #d6ca56;">CNAME</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/LaunchZwift.ps1" style="color: #9ca065;">LaunchZwift.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MonitorZwift-v2.md" style="color: #38dd67;">MonitorZwift-v2.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MonitorZwift-v2.ps1" style="color: #50b16a;">MonitorZwift-v2.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MonitorZwift-v2.ps1%20-%20Shortcut.lnk" style="color: #a1c7e8;">MonitorZwift-v2.ps1 - Shortcut.lnk</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MonitorZwift.ps1" style="color: #55e5ee;">MonitorZwift.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MoveZwiftCleanPhotos.ps1" style="color: #a4ab85;">MoveZwiftCleanPhotos.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/README.md" style="color: #b88b4d;">README.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/SetPrimaryDefault.ps1" style="color: #25e278;">SetPrimaryDefault.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/SetPrimaryZwift.ps1" style="color: #e0c14d;">SetPrimaryZwift.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/Zwift-Bike-Combos.xlsx" style="color: #be9ed8;">Zwift-Bike-Combos.xlsx</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/Zwift-Setup.lnk" style="color: #9e9bd3;">Zwift-Setup.lnk</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/ZwiftSetup.lnk" style="color: #ea9877;">ZwiftSetup.lnk</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/file_list.md" style="color: #2fbf26;">file_list.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/filelist.html" style="color: #38ec12;">filelist.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/filelist.md" style="color: #63a875;">filelist.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sitemap.xml" style="color: #b8d556;">sitemap.xml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/test.ps1" style="color: #9bad33;">test.ps1</a></li>
<h2 style="color: #67db50;">CSS</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/css/DSNotes.css" style="color: #3cd4df;">sauce4zwift-mod-tippy/pages/css/DSNotes.css</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/css/ui.css" style="color: #4be5e3;">sauce4zwift-mod-tippy/pages/css/ui.css</a></li>
<h2 style="color: #fbb6a9;">JavaScript</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.eslintrc.js" style="color: #39f10b;">.eslintrc.js</a></li>
<h2 style="color: #52f203;">YAML</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/dependabot.yml" style="color: #3fb47d;">.github/dependabot.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/labeler.yml" style="color: #cd9e05;">.github/labeler.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/ActionLint.yml" style="color: #25d19f;">.github/workflows/ActionLint.yml</a></li></ul>`;
                            break;
                        case 'file-list-2':
                            file_list_html = `<ul><li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/codeql.yml" style="color: #879aae;">.github/workflows/codeql.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/defender.yml" style="color: #8da0bf;">.github/workflows/defender.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/dependency-review.yml" style="color: #eb9734;">.github/workflows/dependency-review.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/generate-file-list.yml" style="color: #a2bbc9;">.github/workflows/generate-file-list.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/greetings.yml" style="color: #fb7f6a;">.github/workflows/greetings.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/jekyll-gh-pages.yml" style="color: #b39368;">.github/workflows/jekyll-gh-pages.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/label.yml" style="color: #57a9f9;">.github/workflows/label.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/ossar.yml" style="color: #a1ba25;">.github/workflows/ossar.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/osv-scanner.yml" style="color: #9ab758;">.github/workflows/osv-scanner.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/scorecards.yml" style="color: #749d9f;">.github/workflows/scorecards.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/sitemap.yml" style="color: #7be290;">.github/workflows/sitemap.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/stale.yml" style="color: #7083c7;">.github/workflows/stale.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/static.yml" style="color: #a5b79b;">.github/workflows/static.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/super-linter.yml" style="color: #d49b51;">.github/workflows/super-linter.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.markdownlint.yml" style="color: #fd7343;">.markdownlint.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.scss-lint.yml" style="color: #f79ee6;">.scss-lint.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/_config.yml" style="color: #c985b6;">_config.yml</a></li>
<h2 style="color: #da844f;">.vscode</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/generate_file_list.py" style="color: #ce9c30;">.vscode/generate_file_list.py</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/launch.json" style="color: #31c945;">.vscode/launch.json</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/settings.json" style="color: #88d467;">.vscode/settings.json</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/tasks.json" style="color: #4be53a;">.vscode/tasks.json</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/test_generate_file_list.py" style="color: #ddc74c;">.vscode/test_generate_file_list.py</a></li>
<h2 style="color: #e68548;">sauce4zwift-mod-tippy</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/.gitignore" style="color: #b379f1;">sauce4zwift-mod-tippy/.gitignore</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/Change%20Log.txt" style="color: #57ded2;">sauce4zwift-mod-tippy/Change Log.txt</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/LICENSE" style="color: #86e42a;">sauce4zwift-mod-tippy/LICENSE</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/README.md" style="color: #50c6a7;">sauce4zwift-mod-tippy/README.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/manifest.json" style="color: #369f4c;">sauce4zwift-mod-tippy/manifest.json</a></li>
<h2 style="color: #eec20c;">sauce4zwift-mod-tippy/pages</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/DSNotes.html" style="color: #8bd1a2;">sauce4zwift-mod-tippy/pages/DSNotes.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/chaseRace.html" style="color: #c7b264;">sauce4zwift-mod-tippy/pages/chaseRace.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/estimatedCalories.html" style="color: #b9ccab;">sauce4zwift-mod-tippy/pages/estimatedCalories.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/estimatedFinish-v1.html" style="color: #73bd1f;">sauce4zwift-mod-tippy/pages/estimatedFinish-v1.html</a></li>
<h2 style="color: #91b059;">sauce4zwift-mod-tippy/pages/images</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/checker_640.png" style="color: #35fa17;">sauce4zwift-mod-tippy/pages/images/checker_640.png</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/greenConnect.png" style="color: #f59ea8;">sauce4zwift-mod-tippy/pages/images/greenConnect.png</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/orangeConnect.png" style="color: #bd96af;">sauce4zwift-mod-tippy/pages/images/orangeConnect.png</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/redConnect.png" style="color: #7fdd77;">sauce4zwift-mod-tippy/pages/images/redConnect.png</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/whiteConnect.png" style="color: #3efb4e;">sauce4zwift-mod-tippy/pages/images/whiteConnect.png</a></li></ul>`;
                            break;
                        case 'file-list-3':
                            file_list_html = `<ul><h2 style="color: #61b223;">sauce4zwift-mod-tippy/pages/settings</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/settings/DSNotes.html" style="color: #4ef82e;">sauce4zwift-mod-tippy/pages/settings/DSNotes.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/settings/estimatedFinish.html" style="color: #eea870;">sauce4zwift-mod-tippy/pages/settings/estimatedFinish.html</a></li>
<h2 style="color: #f5b65a;">sauce4zwift-mod-tippy/pages/src</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/DSNotes.mjs" style="color: #9ac917;">sauce4zwift-mod-tippy/pages/src/DSNotes.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/chaseRace.mjs" style="color: #44dd12;">sauce4zwift-mod-tippy/pages/src/chaseRace.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/estimatedFinish.mjs" style="color: #c86a92;">sauce4zwift-mod-tippy/pages/src/estimatedFinish.mjs</a></li>
<h2 style="color: #79c332;">sauce4zwift-mod-tippy/pages/src/BM</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/common.mjs" style="color: #ce921a;">sauce4zwift-mod-tippy/pages/src/BM/common.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/dataLookup.mjs" style="color: #3ca76f;">sauce4zwift-mod-tippy/pages/src/BM/dataLookup.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/notesLookup.mjs" style="color: #75a0bb;">sauce4zwift-mod-tippy/pages/src/BM/notesLookup.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/settings.mjs" style="color: #fe8ba5;">sauce4zwift-mod-tippy/pages/src/BM/settings.mjs</a></li>
<h2 style="color: #db7088;">sauce4zwift-mod-tippy/src</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/src/estimatedCalories.mjs" style="color: #4ccfa0;">sauce4zwift-mod-tippy/src/estimatedCalories.mjs</a></li>
<h2 style="color: #6fec44;">src</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/src/generate_file_list.py" style="color: #949ccc;">src/generate_file_list.py</a></li>
<h2 style="color: #ce7d25;">tests</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/MonitorZwift-v2.Tests.ps1" style="color: #7d8766;">tests/MonitorZwift-v2.Tests.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/test_OBSActivateAndRecord.ps1" style="color: #989302;">tests/test_OBSActivateAndRecord.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_LaunchZwift.ps1" style="color: #7e9046;">tests/tests_LaunchZwift.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_MoveZwiftCleanPhotos.ps1" style="color: #b2ab3d;">tests/tests_MoveZwiftCleanPhotos.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_PowerToysAwake.ps1" style="color: #99d75a;">tests/tests_PowerToysAwake.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_SetPrimaryDefault.ps1" style="color: #827cee;">tests/tests_SetPrimaryDefault.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_SetPrimaryZwift.ps1" style="color: #fbaf28;">tests/tests_SetPrimaryZwift.ps1</a></li>
<h2 style="color: #dfb28d;">tests/old</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/old/tests_MonitorZwift-v2_3.ps1" style="color: #bba266;">tests/old/tests_MonitorZwift-v2_3.ps1</a></li></ul>`;
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
                    file_list_html = `<ul><h2 style="color: #ec6679;">Repo Root</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.black" style="color: #59f628;">.black</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.editorconfig" style="color: #61d78d;">.editorconfig</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.gitignore" style="color: #74a86a;">.gitignore</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.hintrc" style="color: #56ee72;">.hintrc</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.jsbeautifyrc" style="color: #6ada3a;">.jsbeautifyrc</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.jscsrc" style="color: #85dad7;">.jscsrc</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.pre-commit-config.yaml" style="color: #5ecaee;">.pre-commit-config.yaml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.pre-commit-hooks.yaml" style="color: #55cf15;">.pre-commit-hooks.yaml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.prettierignore" style="color: #4df36c;">.prettierignore</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.prettierrc" style="color: #3bb88d;">.prettierrc</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.stylelintrc.json" style="color: #a97c6a;">.stylelintrc.json</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vale.ini" style="color: #498feb;">.vale.ini</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/CNAME" style="color: #d6ca56;">CNAME</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/LaunchZwift.ps1" style="color: #9ca065;">LaunchZwift.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MonitorZwift-v2.md" style="color: #38dd67;">MonitorZwift-v2.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MonitorZwift-v2.ps1" style="color: #50b16a;">MonitorZwift-v2.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MonitorZwift-v2.ps1%20-%20Shortcut.lnk" style="color: #a1c7e8;">MonitorZwift-v2.ps1 - Shortcut.lnk</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MonitorZwift.ps1" style="color: #55e5ee;">MonitorZwift.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MoveZwiftCleanPhotos.ps1" style="color: #a4ab85;">MoveZwiftCleanPhotos.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/README.md" style="color: #b88b4d;">README.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/SetPrimaryDefault.ps1" style="color: #25e278;">SetPrimaryDefault.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/SetPrimaryZwift.ps1" style="color: #e0c14d;">SetPrimaryZwift.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/Zwift-Bike-Combos.xlsx" style="color: #be9ed8;">Zwift-Bike-Combos.xlsx</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/Zwift-Setup.lnk" style="color: #9e9bd3;">Zwift-Setup.lnk</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/ZwiftSetup.lnk" style="color: #ea9877;">ZwiftSetup.lnk</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/file_list.md" style="color: #2fbf26;">file_list.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/filelist.html" style="color: #38ec12;">filelist.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/filelist.md" style="color: #63a875;">filelist.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sitemap.xml" style="color: #b8d556;">sitemap.xml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/test.ps1" style="color: #9bad33;">test.ps1</a></li>
<h2 style="color: #67db50;">CSS</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/css/DSNotes.css" style="color: #3cd4df;">sauce4zwift-mod-tippy/pages/css/DSNotes.css</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/css/ui.css" style="color: #4be5e3;">sauce4zwift-mod-tippy/pages/css/ui.css</a></li>
<h2 style="color: #fbb6a9;">JavaScript</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.eslintrc.js" style="color: #39f10b;">.eslintrc.js</a></li>
<h2 style="color: #52f203;">YAML</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/dependabot.yml" style="color: #3fb47d;">.github/dependabot.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/labeler.yml" style="color: #cd9e05;">.github/labeler.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/ActionLint.yml" style="color: #25d19f;">.github/workflows/ActionLint.yml</a></li></ul>`;
                    break;
                case 'file-list-2':
                    file_list_html = `<ul><li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/codeql.yml" style="color: #879aae;">.github/workflows/codeql.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/defender.yml" style="color: #8da0bf;">.github/workflows/defender.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/dependency-review.yml" style="color: #eb9734;">.github/workflows/dependency-review.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/generate-file-list.yml" style="color: #a2bbc9;">.github/workflows/generate-file-list.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/greetings.yml" style="color: #fb7f6a;">.github/workflows/greetings.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/jekyll-gh-pages.yml" style="color: #b39368;">.github/workflows/jekyll-gh-pages.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/label.yml" style="color: #57a9f9;">.github/workflows/label.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/ossar.yml" style="color: #a1ba25;">.github/workflows/ossar.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/osv-scanner.yml" style="color: #9ab758;">.github/workflows/osv-scanner.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/scorecards.yml" style="color: #749d9f;">.github/workflows/scorecards.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/sitemap.yml" style="color: #7be290;">.github/workflows/sitemap.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/stale.yml" style="color: #7083c7;">.github/workflows/stale.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/static.yml" style="color: #a5b79b;">.github/workflows/static.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/super-linter.yml" style="color: #d49b51;">.github/workflows/super-linter.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.markdownlint.yml" style="color: #fd7343;">.markdownlint.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.scss-lint.yml" style="color: #f79ee6;">.scss-lint.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/_config.yml" style="color: #c985b6;">_config.yml</a></li>
<h2 style="color: #da844f;">.vscode</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/generate_file_list.py" style="color: #ce9c30;">.vscode/generate_file_list.py</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/launch.json" style="color: #31c945;">.vscode/launch.json</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/settings.json" style="color: #88d467;">.vscode/settings.json</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/tasks.json" style="color: #4be53a;">.vscode/tasks.json</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/test_generate_file_list.py" style="color: #ddc74c;">.vscode/test_generate_file_list.py</a></li>
<h2 style="color: #e68548;">sauce4zwift-mod-tippy</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/.gitignore" style="color: #b379f1;">sauce4zwift-mod-tippy/.gitignore</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/Change%20Log.txt" style="color: #57ded2;">sauce4zwift-mod-tippy/Change Log.txt</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/LICENSE" style="color: #86e42a;">sauce4zwift-mod-tippy/LICENSE</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/README.md" style="color: #50c6a7;">sauce4zwift-mod-tippy/README.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/manifest.json" style="color: #369f4c;">sauce4zwift-mod-tippy/manifest.json</a></li>
<h2 style="color: #eec20c;">sauce4zwift-mod-tippy/pages</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/DSNotes.html" style="color: #8bd1a2;">sauce4zwift-mod-tippy/pages/DSNotes.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/chaseRace.html" style="color: #c7b264;">sauce4zwift-mod-tippy/pages/chaseRace.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/estimatedCalories.html" style="color: #b9ccab;">sauce4zwift-mod-tippy/pages/estimatedCalories.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/estimatedFinish-v1.html" style="color: #73bd1f;">sauce4zwift-mod-tippy/pages/estimatedFinish-v1.html</a></li>
<h2 style="color: #91b059;">sauce4zwift-mod-tippy/pages/images</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/checker_640.png" style="color: #35fa17;">sauce4zwift-mod-tippy/pages/images/checker_640.png</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/greenConnect.png" style="color: #f59ea8;">sauce4zwift-mod-tippy/pages/images/greenConnect.png</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/orangeConnect.png" style="color: #bd96af;">sauce4zwift-mod-tippy/pages/images/orangeConnect.png</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/redConnect.png" style="color: #7fdd77;">sauce4zwift-mod-tippy/pages/images/redConnect.png</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/whiteConnect.png" style="color: #3efb4e;">sauce4zwift-mod-tippy/pages/images/whiteConnect.png</a></li></ul>`;
                    break;
                case 'file-list-3':
                    file_list_html = `<ul><h2 style="color: #61b223;">sauce4zwift-mod-tippy/pages/settings</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/settings/DSNotes.html" style="color: #4ef82e;">sauce4zwift-mod-tippy/pages/settings/DSNotes.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/settings/estimatedFinish.html" style="color: #eea870;">sauce4zwift-mod-tippy/pages/settings/estimatedFinish.html</a></li>
<h2 style="color: #f5b65a;">sauce4zwift-mod-tippy/pages/src</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/DSNotes.mjs" style="color: #9ac917;">sauce4zwift-mod-tippy/pages/src/DSNotes.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/chaseRace.mjs" style="color: #44dd12;">sauce4zwift-mod-tippy/pages/src/chaseRace.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/estimatedFinish.mjs" style="color: #c86a92;">sauce4zwift-mod-tippy/pages/src/estimatedFinish.mjs</a></li>
<h2 style="color: #79c332;">sauce4zwift-mod-tippy/pages/src/BM</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/common.mjs" style="color: #ce921a;">sauce4zwift-mod-tippy/pages/src/BM/common.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/dataLookup.mjs" style="color: #3ca76f;">sauce4zwift-mod-tippy/pages/src/BM/dataLookup.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/notesLookup.mjs" style="color: #75a0bb;">sauce4zwift-mod-tippy/pages/src/BM/notesLookup.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/settings.mjs" style="color: #fe8ba5;">sauce4zwift-mod-tippy/pages/src/BM/settings.mjs</a></li>
<h2 style="color: #db7088;">sauce4zwift-mod-tippy/src</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/src/estimatedCalories.mjs" style="color: #4ccfa0;">sauce4zwift-mod-tippy/src/estimatedCalories.mjs</a></li>
<h2 style="color: #6fec44;">src</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/src/generate_file_list.py" style="color: #949ccc;">src/generate_file_list.py</a></li>
<h2 style="color: #ce7d25;">tests</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/MonitorZwift-v2.Tests.ps1" style="color: #7d8766;">tests/MonitorZwift-v2.Tests.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/test_OBSActivateAndRecord.ps1" style="color: #989302;">tests/test_OBSActivateAndRecord.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_LaunchZwift.ps1" style="color: #7e9046;">tests/tests_LaunchZwift.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_MoveZwiftCleanPhotos.ps1" style="color: #b2ab3d;">tests/tests_MoveZwiftCleanPhotos.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_PowerToysAwake.ps1" style="color: #99d75a;">tests/tests_PowerToysAwake.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_SetPrimaryDefault.ps1" style="color: #827cee;">tests/tests_SetPrimaryDefault.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_SetPrimaryZwift.ps1" style="color: #fbaf28;">tests/tests_SetPrimaryZwift.ps1</a></li>
<h2 style="color: #dfb28d;">tests/old</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/old/tests_MonitorZwift-v2_3.ps1" style="color: #bba266;">tests/old/tests_MonitorZwift-v2_3.ps1</a></li></ul>`;
                    break;
            }
            placeholder.innerHTML = file_list_html;
        });
    }
});
</script>

<!-- FILE_LIST_END -->
