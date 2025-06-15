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
                            file_list_html = `<ul><h2 style="color: #e082d8;">Repo Root</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.black" style="color: #d7bb17;">.black</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.editorconfig" style="color: #4bf420;">.editorconfig</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.gitignore" style="color: #62e12b;">.gitignore</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.hintrc" style="color: #8b8f59;">.hintrc</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.jsbeautifyrc" style="color: #a6c6d8;">.jsbeautifyrc</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.jscsrc" style="color: #e7c403;">.jscsrc</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.pre-commit-config.yaml" style="color: #2cd6cd;">.pre-commit-config.yaml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.pre-commit-hooks.yaml" style="color: #969781;">.pre-commit-hooks.yaml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.prettierignore" style="color: #24fb83;">.prettierignore</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.prettierrc" style="color: #999ff0;">.prettierrc</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.stylelintrc.json" style="color: #9b95ea;">.stylelintrc.json</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vale.ini" style="color: #32a7c7;">.vale.ini</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/CNAME" style="color: #d19b97;">CNAME</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/LaunchZwift.ps1" style="color: #87c0cb;">LaunchZwift.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MonitorZwift-v2.md" style="color: #92a7a0;">MonitorZwift-v2.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MonitorZwift-v2.ps1" style="color: #a6852a;">MonitorZwift-v2.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MonitorZwift-v2.ps1%20-%20Shortcut.lnk" style="color: #95a140;">MonitorZwift-v2.ps1 - Shortcut.lnk</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MonitorZwift.ps1" style="color: #26ca2e;">MonitorZwift.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MoveZwiftCleanPhotos.ps1" style="color: #f3b011;">MoveZwiftCleanPhotos.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/README.md" style="color: #fb67c5;">README.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/SetPrimaryDefault.ps1" style="color: #90d5ec;">SetPrimaryDefault.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/SetPrimaryZwift.ps1" style="color: #b7c76f;">SetPrimaryZwift.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/Zwift-Bike-Combos.xlsx" style="color: #b9bcea;">Zwift-Bike-Combos.xlsx</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/Zwift-Setup.lnk" style="color: #bf78b3;">Zwift-Setup.lnk</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/ZwiftSetup.lnk" style="color: #aa75d4;">ZwiftSetup.lnk</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/file_list.md" style="color: #a19d30;">file_list.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/filelist.html" style="color: #51a5dc;">filelist.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/filelist.md" style="color: #26d5cc;">filelist.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sitemap.xml" style="color: #e79618;">sitemap.xml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/test.ps1" style="color: #2ca5dd;">test.ps1</a></li>
<h2 style="color: #aabe42;">CSS</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/css/DSNotes.css" style="color: #23e7bf;">sauce4zwift-mod-tippy/pages/css/DSNotes.css</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/css/ui.css" style="color: #fdc42f;">sauce4zwift-mod-tippy/pages/css/ui.css</a></li>
<h2 style="color: #accaed;">JavaScript</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.eslintrc.js" style="color: #938785;">.eslintrc.js</a></li>
<h2 style="color: #9b8608;">YAML</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/dependabot.yml" style="color: #e7b3cf;">.github/dependabot.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/labeler.yml" style="color: #c09830;">.github/labeler.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/ActionLint.yml" style="color: #cb9489;">.github/workflows/ActionLint.yml</a></li></ul>`;
                            break;
                        case 'file-list-2':
                            file_list_html = `<ul><li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/codeql.yml" style="color: #3fe09c;">.github/workflows/codeql.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/defender.yml" style="color: #b58dcf;">.github/workflows/defender.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/dependency-review.yml" style="color: #f2638b;">.github/workflows/dependency-review.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/generate-file-list.yml" style="color: #579c69;">.github/workflows/generate-file-list.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/greetings.yml" style="color: #f78c2e;">.github/workflows/greetings.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/jekyll-gh-pages.yml" style="color: #ae7f03;">.github/workflows/jekyll-gh-pages.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/label.yml" style="color: #aada23;">.github/workflows/label.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/ossar.yml" style="color: #22b7a2;">.github/workflows/ossar.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/osv-scanner.yml" style="color: #f37b62;">.github/workflows/osv-scanner.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/scorecards.yml" style="color: #f873c7;">.github/workflows/scorecards.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/sitemap.yml" style="color: #38de58;">.github/workflows/sitemap.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/stale.yml" style="color: #978a2f;">.github/workflows/stale.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/static.yml" style="color: #69cdb8;">.github/workflows/static.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/super-linter.yml" style="color: #7b9129;">.github/workflows/super-linter.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.markdownlint.yml" style="color: #e77d5b;">.markdownlint.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.scss-lint.yml" style="color: #a3a746;">.scss-lint.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/_config.yml" style="color: #2e9e4e;">_config.yml</a></li>
<h2 style="color: #948b2f;">.vscode</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/generate_file_list.py" style="color: #4edfe1;">.vscode/generate_file_list.py</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/launch.json" style="color: #9c84a2;">.vscode/launch.json</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/settings.json" style="color: #2cba5a;">.vscode/settings.json</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/tasks.json" style="color: #b567eb;">.vscode/tasks.json</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/test_generate_file_list.py" style="color: #2ec48d;">.vscode/test_generate_file_list.py</a></li>
<h2 style="color: #2ea28b;">sauce4zwift-mod-tippy</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/.gitignore" style="color: #5f8992;">sauce4zwift-mod-tippy/.gitignore</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/Change%20Log.txt" style="color: #e66dd1;">sauce4zwift-mod-tippy/Change Log.txt</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/LICENSE" style="color: #b8cf55;">sauce4zwift-mod-tippy/LICENSE</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/README.md" style="color: #d7c103;">sauce4zwift-mod-tippy/README.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/manifest.json" style="color: #f76676;">sauce4zwift-mod-tippy/manifest.json</a></li>
<h2 style="color: #d39cf5;">sauce4zwift-mod-tippy/pages</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/DSNotes.html" style="color: #8ec5bb;">sauce4zwift-mod-tippy/pages/DSNotes.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/chaseRace.html" style="color: #22a0f5;">sauce4zwift-mod-tippy/pages/chaseRace.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/estimatedCalories.html" style="color: #92c12a;">sauce4zwift-mod-tippy/pages/estimatedCalories.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/estimatedFinish-v1.html" style="color: #7d92cf;">sauce4zwift-mod-tippy/pages/estimatedFinish-v1.html</a></li>
<h2 style="color: #28db7f;">sauce4zwift-mod-tippy/pages/images</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/checker_640.png" style="color: #28e1da;">sauce4zwift-mod-tippy/pages/images/checker_640.png</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/greenConnect.png" style="color: #41d252;">sauce4zwift-mod-tippy/pages/images/greenConnect.png</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/orangeConnect.png" style="color: #60a22d;">sauce4zwift-mod-tippy/pages/images/orangeConnect.png</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/redConnect.png" style="color: #6a9242;">sauce4zwift-mod-tippy/pages/images/redConnect.png</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/whiteConnect.png" style="color: #dcd03c;">sauce4zwift-mod-tippy/pages/images/whiteConnect.png</a></li></ul>`;
                            break;
                        case 'file-list-3':
                            file_list_html = `<ul><h2 style="color: #89de16;">sauce4zwift-mod-tippy/pages/settings</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/settings/DSNotes.html" style="color: #52a3cc;">sauce4zwift-mod-tippy/pages/settings/DSNotes.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/settings/estimatedFinish.html" style="color: #599c6b;">sauce4zwift-mod-tippy/pages/settings/estimatedFinish.html</a></li>
<h2 style="color: #db77a4;">sauce4zwift-mod-tippy/pages/src</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/DSNotes.mjs" style="color: #c8a61f;">sauce4zwift-mod-tippy/pages/src/DSNotes.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/chaseRace.mjs" style="color: #7e87ae;">sauce4zwift-mod-tippy/pages/src/chaseRace.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/estimatedFinish.mjs" style="color: #ec99f3;">sauce4zwift-mod-tippy/pages/src/estimatedFinish.mjs</a></li>
<h2 style="color: #d4c04e;">sauce4zwift-mod-tippy/pages/src/BM</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/common.mjs" style="color: #44cabe;">sauce4zwift-mod-tippy/pages/src/BM/common.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/dataLookup.mjs" style="color: #36a165;">sauce4zwift-mod-tippy/pages/src/BM/dataLookup.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/notesLookup.mjs" style="color: #fc9b8c;">sauce4zwift-mod-tippy/pages/src/BM/notesLookup.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/settings.mjs" style="color: #44d8f4;">sauce4zwift-mod-tippy/pages/src/BM/settings.mjs</a></li>
<h2 style="color: #43a06a;">sauce4zwift-mod-tippy/src</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/src/estimatedCalories.mjs" style="color: #b1bf59;">sauce4zwift-mod-tippy/src/estimatedCalories.mjs</a></li>
<h2 style="color: #9db36f;">src</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/src/generate_file_list.py" style="color: #c3cb4e;">src/generate_file_list.py</a></li>
<h2 style="color: #fe8e62;">tests</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/MonitorZwift-v2.Tests.ps1" style="color: #3dc1c8;">tests/MonitorZwift-v2.Tests.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/test_OBSActivateAndRecord.ps1" style="color: #c7cb5f;">tests/test_OBSActivateAndRecord.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_LaunchZwift.ps1" style="color: #a39497;">tests/tests_LaunchZwift.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_MoveZwiftCleanPhotos.ps1" style="color: #d3b284;">tests/tests_MoveZwiftCleanPhotos.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_PowerToysAwake.ps1" style="color: #5bb0af;">tests/tests_PowerToysAwake.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_SetPrimaryDefault.ps1" style="color: #7aa40f;">tests/tests_SetPrimaryDefault.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_SetPrimaryZwift.ps1" style="color: #a7d609;">tests/tests_SetPrimaryZwift.ps1</a></li>
<h2 style="color: #e377fa;">tests/old</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/old/tests_MonitorZwift-v2_3.ps1" style="color: #e264e3;">tests/old/tests_MonitorZwift-v2_3.ps1</a></li></ul>`;
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
                    file_list_html = `<ul><h2 style="color: #e082d8;">Repo Root</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.black" style="color: #d7bb17;">.black</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.editorconfig" style="color: #4bf420;">.editorconfig</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.gitignore" style="color: #62e12b;">.gitignore</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.hintrc" style="color: #8b8f59;">.hintrc</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.jsbeautifyrc" style="color: #a6c6d8;">.jsbeautifyrc</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.jscsrc" style="color: #e7c403;">.jscsrc</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.pre-commit-config.yaml" style="color: #2cd6cd;">.pre-commit-config.yaml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.pre-commit-hooks.yaml" style="color: #969781;">.pre-commit-hooks.yaml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.prettierignore" style="color: #24fb83;">.prettierignore</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.prettierrc" style="color: #999ff0;">.prettierrc</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.stylelintrc.json" style="color: #9b95ea;">.stylelintrc.json</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vale.ini" style="color: #32a7c7;">.vale.ini</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/CNAME" style="color: #d19b97;">CNAME</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/LaunchZwift.ps1" style="color: #87c0cb;">LaunchZwift.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MonitorZwift-v2.md" style="color: #92a7a0;">MonitorZwift-v2.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MonitorZwift-v2.ps1" style="color: #a6852a;">MonitorZwift-v2.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MonitorZwift-v2.ps1%20-%20Shortcut.lnk" style="color: #95a140;">MonitorZwift-v2.ps1 - Shortcut.lnk</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MonitorZwift.ps1" style="color: #26ca2e;">MonitorZwift.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MoveZwiftCleanPhotos.ps1" style="color: #f3b011;">MoveZwiftCleanPhotos.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/README.md" style="color: #fb67c5;">README.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/SetPrimaryDefault.ps1" style="color: #90d5ec;">SetPrimaryDefault.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/SetPrimaryZwift.ps1" style="color: #b7c76f;">SetPrimaryZwift.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/Zwift-Bike-Combos.xlsx" style="color: #b9bcea;">Zwift-Bike-Combos.xlsx</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/Zwift-Setup.lnk" style="color: #bf78b3;">Zwift-Setup.lnk</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/ZwiftSetup.lnk" style="color: #aa75d4;">ZwiftSetup.lnk</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/file_list.md" style="color: #a19d30;">file_list.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/filelist.html" style="color: #51a5dc;">filelist.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/filelist.md" style="color: #26d5cc;">filelist.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sitemap.xml" style="color: #e79618;">sitemap.xml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/test.ps1" style="color: #2ca5dd;">test.ps1</a></li>
<h2 style="color: #aabe42;">CSS</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/css/DSNotes.css" style="color: #23e7bf;">sauce4zwift-mod-tippy/pages/css/DSNotes.css</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/css/ui.css" style="color: #fdc42f;">sauce4zwift-mod-tippy/pages/css/ui.css</a></li>
<h2 style="color: #accaed;">JavaScript</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.eslintrc.js" style="color: #938785;">.eslintrc.js</a></li>
<h2 style="color: #9b8608;">YAML</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/dependabot.yml" style="color: #e7b3cf;">.github/dependabot.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/labeler.yml" style="color: #c09830;">.github/labeler.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/ActionLint.yml" style="color: #cb9489;">.github/workflows/ActionLint.yml</a></li></ul>`;
                    break;
                case 'file-list-2':
                    file_list_html = `<ul><li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/codeql.yml" style="color: #3fe09c;">.github/workflows/codeql.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/defender.yml" style="color: #b58dcf;">.github/workflows/defender.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/dependency-review.yml" style="color: #f2638b;">.github/workflows/dependency-review.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/generate-file-list.yml" style="color: #579c69;">.github/workflows/generate-file-list.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/greetings.yml" style="color: #f78c2e;">.github/workflows/greetings.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/jekyll-gh-pages.yml" style="color: #ae7f03;">.github/workflows/jekyll-gh-pages.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/label.yml" style="color: #aada23;">.github/workflows/label.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/ossar.yml" style="color: #22b7a2;">.github/workflows/ossar.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/osv-scanner.yml" style="color: #f37b62;">.github/workflows/osv-scanner.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/scorecards.yml" style="color: #f873c7;">.github/workflows/scorecards.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/sitemap.yml" style="color: #38de58;">.github/workflows/sitemap.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/stale.yml" style="color: #978a2f;">.github/workflows/stale.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/static.yml" style="color: #69cdb8;">.github/workflows/static.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/super-linter.yml" style="color: #7b9129;">.github/workflows/super-linter.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.markdownlint.yml" style="color: #e77d5b;">.markdownlint.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.scss-lint.yml" style="color: #a3a746;">.scss-lint.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/_config.yml" style="color: #2e9e4e;">_config.yml</a></li>
<h2 style="color: #948b2f;">.vscode</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/generate_file_list.py" style="color: #4edfe1;">.vscode/generate_file_list.py</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/launch.json" style="color: #9c84a2;">.vscode/launch.json</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/settings.json" style="color: #2cba5a;">.vscode/settings.json</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/tasks.json" style="color: #b567eb;">.vscode/tasks.json</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/test_generate_file_list.py" style="color: #2ec48d;">.vscode/test_generate_file_list.py</a></li>
<h2 style="color: #2ea28b;">sauce4zwift-mod-tippy</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/.gitignore" style="color: #5f8992;">sauce4zwift-mod-tippy/.gitignore</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/Change%20Log.txt" style="color: #e66dd1;">sauce4zwift-mod-tippy/Change Log.txt</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/LICENSE" style="color: #b8cf55;">sauce4zwift-mod-tippy/LICENSE</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/README.md" style="color: #d7c103;">sauce4zwift-mod-tippy/README.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/manifest.json" style="color: #f76676;">sauce4zwift-mod-tippy/manifest.json</a></li>
<h2 style="color: #d39cf5;">sauce4zwift-mod-tippy/pages</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/DSNotes.html" style="color: #8ec5bb;">sauce4zwift-mod-tippy/pages/DSNotes.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/chaseRace.html" style="color: #22a0f5;">sauce4zwift-mod-tippy/pages/chaseRace.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/estimatedCalories.html" style="color: #92c12a;">sauce4zwift-mod-tippy/pages/estimatedCalories.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/estimatedFinish-v1.html" style="color: #7d92cf;">sauce4zwift-mod-tippy/pages/estimatedFinish-v1.html</a></li>
<h2 style="color: #28db7f;">sauce4zwift-mod-tippy/pages/images</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/checker_640.png" style="color: #28e1da;">sauce4zwift-mod-tippy/pages/images/checker_640.png</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/greenConnect.png" style="color: #41d252;">sauce4zwift-mod-tippy/pages/images/greenConnect.png</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/orangeConnect.png" style="color: #60a22d;">sauce4zwift-mod-tippy/pages/images/orangeConnect.png</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/redConnect.png" style="color: #6a9242;">sauce4zwift-mod-tippy/pages/images/redConnect.png</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/whiteConnect.png" style="color: #dcd03c;">sauce4zwift-mod-tippy/pages/images/whiteConnect.png</a></li></ul>`;
                    break;
                case 'file-list-3':
                    file_list_html = `<ul><h2 style="color: #89de16;">sauce4zwift-mod-tippy/pages/settings</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/settings/DSNotes.html" style="color: #52a3cc;">sauce4zwift-mod-tippy/pages/settings/DSNotes.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/settings/estimatedFinish.html" style="color: #599c6b;">sauce4zwift-mod-tippy/pages/settings/estimatedFinish.html</a></li>
<h2 style="color: #db77a4;">sauce4zwift-mod-tippy/pages/src</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/DSNotes.mjs" style="color: #c8a61f;">sauce4zwift-mod-tippy/pages/src/DSNotes.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/chaseRace.mjs" style="color: #7e87ae;">sauce4zwift-mod-tippy/pages/src/chaseRace.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/estimatedFinish.mjs" style="color: #ec99f3;">sauce4zwift-mod-tippy/pages/src/estimatedFinish.mjs</a></li>
<h2 style="color: #d4c04e;">sauce4zwift-mod-tippy/pages/src/BM</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/common.mjs" style="color: #44cabe;">sauce4zwift-mod-tippy/pages/src/BM/common.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/dataLookup.mjs" style="color: #36a165;">sauce4zwift-mod-tippy/pages/src/BM/dataLookup.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/notesLookup.mjs" style="color: #fc9b8c;">sauce4zwift-mod-tippy/pages/src/BM/notesLookup.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/settings.mjs" style="color: #44d8f4;">sauce4zwift-mod-tippy/pages/src/BM/settings.mjs</a></li>
<h2 style="color: #43a06a;">sauce4zwift-mod-tippy/src</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/src/estimatedCalories.mjs" style="color: #b1bf59;">sauce4zwift-mod-tippy/src/estimatedCalories.mjs</a></li>
<h2 style="color: #9db36f;">src</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/src/generate_file_list.py" style="color: #c3cb4e;">src/generate_file_list.py</a></li>
<h2 style="color: #fe8e62;">tests</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/MonitorZwift-v2.Tests.ps1" style="color: #3dc1c8;">tests/MonitorZwift-v2.Tests.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/test_OBSActivateAndRecord.ps1" style="color: #c7cb5f;">tests/test_OBSActivateAndRecord.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_LaunchZwift.ps1" style="color: #a39497;">tests/tests_LaunchZwift.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_MoveZwiftCleanPhotos.ps1" style="color: #d3b284;">tests/tests_MoveZwiftCleanPhotos.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_PowerToysAwake.ps1" style="color: #5bb0af;">tests/tests_PowerToysAwake.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_SetPrimaryDefault.ps1" style="color: #7aa40f;">tests/tests_SetPrimaryDefault.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_SetPrimaryZwift.ps1" style="color: #a7d609;">tests/tests_SetPrimaryZwift.ps1</a></li>
<h2 style="color: #e377fa;">tests/old</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/old/tests_MonitorZwift-v2_3.ps1" style="color: #e264e3;">tests/old/tests_MonitorZwift-v2_3.ps1</a></li></ul>`;
                    break;
            }
            placeholder.innerHTML = file_list_html;
        });
    }
});
</script>
