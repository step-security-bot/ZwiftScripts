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
                            file_list_html = `<ul><h2 style="color: #b1a761;">Repo Root</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.black" style="color: #d6b7c3;">.black</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.editorconfig" style="color: #9bc055;">.editorconfig</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.gitignore" style="color: #b2bdb0;">.gitignore</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.hintrc" style="color: #8590cf;">.hintrc</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.jsbeautifyrc" style="color: #95b42a;">.jsbeautifyrc</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.jscsrc" style="color: #d79341;">.jscsrc</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.pre-commit-config.yaml" style="color: #59dfbc;">.pre-commit-config.yaml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.pre-commit-hooks.yaml" style="color: #8fd3c4;">.pre-commit-hooks.yaml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.prettierignore" style="color: #ec83a5;">.prettierignore</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.prettierrc" style="color: #4fed8a;">.prettierrc</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.stylelintrc.json" style="color: #59a68e;">.stylelintrc.json</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vale.ini" style="color: #59ef66;">.vale.ini</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/CNAME" style="color: #4ece9f;">CNAME</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/LaunchZwift.ps1" style="color: #da7a5c;">LaunchZwift.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MonitorZwift-v2.md" style="color: #6aa016;">MonitorZwift-v2.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MonitorZwift-v2.ps1" style="color: #aba8cc;">MonitorZwift-v2.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MonitorZwift-v2.ps1%20-%20Shortcut.lnk" style="color: #9dc1c5;">MonitorZwift-v2.ps1 - Shortcut.lnk</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MonitorZwift.ps1" style="color: #5d8f53;">MonitorZwift.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MoveZwiftCleanPhotos.ps1" style="color: #f1b093;">MoveZwiftCleanPhotos.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/README.md" style="color: #3ace4f;">README.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/SetPrimaryDefault.ps1" style="color: #da7d7b;">SetPrimaryDefault.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/SetPrimaryZwift.ps1" style="color: #e69eff;">SetPrimaryZwift.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/Zwift-Bike-Combos.xlsx" style="color: #9a7d64;">Zwift-Bike-Combos.xlsx</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/Zwift-Setup.lnk" style="color: #bb7a11;">Zwift-Setup.lnk</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/ZwiftSetup.lnk" style="color: #36a7a0;">ZwiftSetup.lnk</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/file_list.md" style="color: #d9a18a;">file_list.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/filelist.html" style="color: #a5748a;">filelist.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/filelist.md" style="color: #d1b9ac;">filelist.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sitemap.xml" style="color: #4aa1b5;">sitemap.xml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/test.ps1" style="color: #429eb8;">test.ps1</a></li>
<h2 style="color: #e3ba35;">CSS</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/css/DSNotes.css" style="color: #9db703;">sauce4zwift-mod-tippy/pages/css/DSNotes.css</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/css/ui.css" style="color: #65c910;">sauce4zwift-mod-tippy/pages/css/ui.css</a></li>
<h2 style="color: #4f8f80;">JavaScript</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.eslintrc.js" style="color: #b6a47a;">.eslintrc.js</a></li>
<h2 style="color: #57b332;">YAML</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/dependabot.yml" style="color: #c38d7b;">.github/dependabot.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/labeler.yml" style="color: #c2a1ff;">.github/labeler.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/ActionLint.yml" style="color: #caaec9;">.github/workflows/ActionLint.yml</a></li></ul>`;
                            break;
                        case 'file-list-2':
                            file_list_html = `<ul><li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/codeql.yml" style="color: #828ef1;">.github/workflows/codeql.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/defender.yml" style="color: #42bae1;">.github/workflows/defender.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/dependency-review.yml" style="color: #fcb410;">.github/workflows/dependency-review.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/generate-file-list.yml" style="color: #56c8b2;">.github/workflows/generate-file-list.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/greetings.yml" style="color: #8eb2b8;">.github/workflows/greetings.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/jekyll-gh-pages.yml" style="color: #e6b346;">.github/workflows/jekyll-gh-pages.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/label.yml" style="color: #60db69;">.github/workflows/label.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/ossar.yml" style="color: #b6a10a;">.github/workflows/ossar.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/osv-scanner.yml" style="color: #87d21b;">.github/workflows/osv-scanner.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/scorecards.yml" style="color: #99884d;">.github/workflows/scorecards.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/sitemap.yml" style="color: #69c780;">.github/workflows/sitemap.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/stale.yml" style="color: #bcc90c;">.github/workflows/stale.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/static.yml" style="color: #c5ca26;">.github/workflows/static.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/super-linter.yml" style="color: #bf839a;">.github/workflows/super-linter.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.markdownlint.yml" style="color: #9bdd40;">.markdownlint.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.scss-lint.yml" style="color: #86cb2e;">.scss-lint.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/_config.yml" style="color: #6fd522;">_config.yml</a></li>
<h2 style="color: #fe639d;">.vscode</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/generate_file_list.py" style="color: #a1aa2c;">.vscode/generate_file_list.py</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/launch.json" style="color: #cfa5c5;">.vscode/launch.json</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/settings.json" style="color: #a5c6d0;">.vscode/settings.json</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/tasks.json" style="color: #bfc56e;">.vscode/tasks.json</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/test_generate_file_list.py" style="color: #aa9a8b;">.vscode/test_generate_file_list.py</a></li>
<h2 style="color: #3ce008;">sauce4zwift-mod-tippy</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/.gitignore" style="color: #5cadf5;">sauce4zwift-mod-tippy/.gitignore</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/Change%20Log.txt" style="color: #26e3d0;">sauce4zwift-mod-tippy/Change Log.txt</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/LICENSE" style="color: #a086c0;">sauce4zwift-mod-tippy/LICENSE</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/README.md" style="color: #69b39d;">sauce4zwift-mod-tippy/README.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/manifest.json" style="color: #f3852d;">sauce4zwift-mod-tippy/manifest.json</a></li>
<h2 style="color: #33baba;">sauce4zwift-mod-tippy/pages</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/DSNotes.html" style="color: #c4c76c;">sauce4zwift-mod-tippy/pages/DSNotes.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/chaseRace.html" style="color: #71a506;">sauce4zwift-mod-tippy/pages/chaseRace.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/estimatedCalories.html" style="color: #e28eec;">sauce4zwift-mod-tippy/pages/estimatedCalories.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/estimatedFinish-v1.html" style="color: #4ec308;">sauce4zwift-mod-tippy/pages/estimatedFinish-v1.html</a></li>
<h2 style="color: #41c19c;">sauce4zwift-mod-tippy/pages/images</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/checker_640.png" style="color: #9bcdb9;">sauce4zwift-mod-tippy/pages/images/checker_640.png</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/greenConnect.png" style="color: #5eddd4;">sauce4zwift-mod-tippy/pages/images/greenConnect.png</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/orangeConnect.png" style="color: #e1a37d;">sauce4zwift-mod-tippy/pages/images/orangeConnect.png</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/redConnect.png" style="color: #f080de;">sauce4zwift-mod-tippy/pages/images/redConnect.png</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/whiteConnect.png" style="color: #e7b09a;">sauce4zwift-mod-tippy/pages/images/whiteConnect.png</a></li></ul>`;
                            break;
                        case 'file-list-3':
                            file_list_html = `<ul><h2 style="color: #c7ce57;">sauce4zwift-mod-tippy/pages/settings</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/settings/DSNotes.html" style="color: #beb0a2;">sauce4zwift-mod-tippy/pages/settings/DSNotes.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/settings/estimatedFinish.html" style="color: #f4710d;">sauce4zwift-mod-tippy/pages/settings/estimatedFinish.html</a></li>
<h2 style="color: #f9a1c9;">sauce4zwift-mod-tippy/pages/src</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/DSNotes.mjs" style="color: #f3a1c4;">sauce4zwift-mod-tippy/pages/src/DSNotes.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/chaseRace.mjs" style="color: #a18d6f;">sauce4zwift-mod-tippy/pages/src/chaseRace.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/estimatedFinish.mjs" style="color: #23a8c0;">sauce4zwift-mod-tippy/pages/src/estimatedFinish.mjs</a></li>
<h2 style="color: #57ad5e;">sauce4zwift-mod-tippy/pages/src/BM</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/common.mjs" style="color: #7a8bfd;">sauce4zwift-mod-tippy/pages/src/BM/common.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/dataLookup.mjs" style="color: #76c31d;">sauce4zwift-mod-tippy/pages/src/BM/dataLookup.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/notesLookup.mjs" style="color: #5bbdb0;">sauce4zwift-mod-tippy/pages/src/BM/notesLookup.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/settings.mjs" style="color: #dea1e0;">sauce4zwift-mod-tippy/pages/src/BM/settings.mjs</a></li>
<h2 style="color: #c3ae89;">sauce4zwift-mod-tippy/src</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/src/estimatedCalories.mjs" style="color: #c4c2a5;">sauce4zwift-mod-tippy/src/estimatedCalories.mjs</a></li>
<h2 style="color: #28e735;">src</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/src/generate_file_list.py" style="color: #be8f69;">src/generate_file_list.py</a></li>
<h2 style="color: #b270cc;">tests</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/MonitorZwift-v2.Tests.ps1" style="color: #68ab67;">tests/MonitorZwift-v2.Tests.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/test_OBSActivateAndRecord.ps1" style="color: #bf8d70;">tests/test_OBSActivateAndRecord.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_LaunchZwift.ps1" style="color: #bd69e5;">tests/tests_LaunchZwift.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_MoveZwiftCleanPhotos.ps1" style="color: #26b136;">tests/tests_MoveZwiftCleanPhotos.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_PowerToysAwake.ps1" style="color: #23b829;">tests/tests_PowerToysAwake.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_SetPrimaryDefault.ps1" style="color: #a6b079;">tests/tests_SetPrimaryDefault.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_SetPrimaryZwift.ps1" style="color: #5787d6;">tests/tests_SetPrimaryZwift.ps1</a></li>
<h2 style="color: #fe648c;">tests/old</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/old/tests_MonitorZwift-v2_3.ps1" style="color: #3692f4;">tests/old/tests_MonitorZwift-v2_3.ps1</a></li></ul>`;
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
                    file_list_html = `<ul><h2 style="color: #b1a761;">Repo Root</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.black" style="color: #d6b7c3;">.black</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.editorconfig" style="color: #9bc055;">.editorconfig</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.gitignore" style="color: #b2bdb0;">.gitignore</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.hintrc" style="color: #8590cf;">.hintrc</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.jsbeautifyrc" style="color: #95b42a;">.jsbeautifyrc</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.jscsrc" style="color: #d79341;">.jscsrc</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.pre-commit-config.yaml" style="color: #59dfbc;">.pre-commit-config.yaml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.pre-commit-hooks.yaml" style="color: #8fd3c4;">.pre-commit-hooks.yaml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.prettierignore" style="color: #ec83a5;">.prettierignore</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.prettierrc" style="color: #4fed8a;">.prettierrc</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.stylelintrc.json" style="color: #59a68e;">.stylelintrc.json</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vale.ini" style="color: #59ef66;">.vale.ini</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/CNAME" style="color: #4ece9f;">CNAME</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/LaunchZwift.ps1" style="color: #da7a5c;">LaunchZwift.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MonitorZwift-v2.md" style="color: #6aa016;">MonitorZwift-v2.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MonitorZwift-v2.ps1" style="color: #aba8cc;">MonitorZwift-v2.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MonitorZwift-v2.ps1%20-%20Shortcut.lnk" style="color: #9dc1c5;">MonitorZwift-v2.ps1 - Shortcut.lnk</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MonitorZwift.ps1" style="color: #5d8f53;">MonitorZwift.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/MoveZwiftCleanPhotos.ps1" style="color: #f1b093;">MoveZwiftCleanPhotos.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/README.md" style="color: #3ace4f;">README.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/SetPrimaryDefault.ps1" style="color: #da7d7b;">SetPrimaryDefault.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/SetPrimaryZwift.ps1" style="color: #e69eff;">SetPrimaryZwift.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/Zwift-Bike-Combos.xlsx" style="color: #9a7d64;">Zwift-Bike-Combos.xlsx</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/Zwift-Setup.lnk" style="color: #bb7a11;">Zwift-Setup.lnk</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/ZwiftSetup.lnk" style="color: #36a7a0;">ZwiftSetup.lnk</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/file_list.md" style="color: #d9a18a;">file_list.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/filelist.html" style="color: #a5748a;">filelist.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/filelist.md" style="color: #d1b9ac;">filelist.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sitemap.xml" style="color: #4aa1b5;">sitemap.xml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/test.ps1" style="color: #429eb8;">test.ps1</a></li>
<h2 style="color: #e3ba35;">CSS</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/css/DSNotes.css" style="color: #9db703;">sauce4zwift-mod-tippy/pages/css/DSNotes.css</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/css/ui.css" style="color: #65c910;">sauce4zwift-mod-tippy/pages/css/ui.css</a></li>
<h2 style="color: #4f8f80;">JavaScript</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.eslintrc.js" style="color: #b6a47a;">.eslintrc.js</a></li>
<h2 style="color: #57b332;">YAML</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/dependabot.yml" style="color: #c38d7b;">.github/dependabot.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/labeler.yml" style="color: #c2a1ff;">.github/labeler.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/ActionLint.yml" style="color: #caaec9;">.github/workflows/ActionLint.yml</a></li></ul>`;
                    break;
                case 'file-list-2':
                    file_list_html = `<ul><li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/codeql.yml" style="color: #828ef1;">.github/workflows/codeql.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/defender.yml" style="color: #42bae1;">.github/workflows/defender.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/dependency-review.yml" style="color: #fcb410;">.github/workflows/dependency-review.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/generate-file-list.yml" style="color: #56c8b2;">.github/workflows/generate-file-list.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/greetings.yml" style="color: #8eb2b8;">.github/workflows/greetings.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/jekyll-gh-pages.yml" style="color: #e6b346;">.github/workflows/jekyll-gh-pages.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/label.yml" style="color: #60db69;">.github/workflows/label.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/ossar.yml" style="color: #b6a10a;">.github/workflows/ossar.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/osv-scanner.yml" style="color: #87d21b;">.github/workflows/osv-scanner.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/scorecards.yml" style="color: #99884d;">.github/workflows/scorecards.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/sitemap.yml" style="color: #69c780;">.github/workflows/sitemap.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/stale.yml" style="color: #bcc90c;">.github/workflows/stale.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/static.yml" style="color: #c5ca26;">.github/workflows/static.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.github/workflows/super-linter.yml" style="color: #bf839a;">.github/workflows/super-linter.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.markdownlint.yml" style="color: #9bdd40;">.markdownlint.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.scss-lint.yml" style="color: #86cb2e;">.scss-lint.yml</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/_config.yml" style="color: #6fd522;">_config.yml</a></li>
<h2 style="color: #fe639d;">.vscode</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/generate_file_list.py" style="color: #a1aa2c;">.vscode/generate_file_list.py</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/launch.json" style="color: #cfa5c5;">.vscode/launch.json</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/settings.json" style="color: #a5c6d0;">.vscode/settings.json</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/tasks.json" style="color: #bfc56e;">.vscode/tasks.json</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/.vscode/test_generate_file_list.py" style="color: #aa9a8b;">.vscode/test_generate_file_list.py</a></li>
<h2 style="color: #3ce008;">sauce4zwift-mod-tippy</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/.gitignore" style="color: #5cadf5;">sauce4zwift-mod-tippy/.gitignore</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/Change%20Log.txt" style="color: #26e3d0;">sauce4zwift-mod-tippy/Change Log.txt</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/LICENSE" style="color: #a086c0;">sauce4zwift-mod-tippy/LICENSE</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/README.md" style="color: #69b39d;">sauce4zwift-mod-tippy/README.md</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/manifest.json" style="color: #f3852d;">sauce4zwift-mod-tippy/manifest.json</a></li>
<h2 style="color: #33baba;">sauce4zwift-mod-tippy/pages</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/DSNotes.html" style="color: #c4c76c;">sauce4zwift-mod-tippy/pages/DSNotes.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/chaseRace.html" style="color: #71a506;">sauce4zwift-mod-tippy/pages/chaseRace.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/estimatedCalories.html" style="color: #e28eec;">sauce4zwift-mod-tippy/pages/estimatedCalories.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/estimatedFinish-v1.html" style="color: #4ec308;">sauce4zwift-mod-tippy/pages/estimatedFinish-v1.html</a></li>
<h2 style="color: #41c19c;">sauce4zwift-mod-tippy/pages/images</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/checker_640.png" style="color: #9bcdb9;">sauce4zwift-mod-tippy/pages/images/checker_640.png</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/greenConnect.png" style="color: #5eddd4;">sauce4zwift-mod-tippy/pages/images/greenConnect.png</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/orangeConnect.png" style="color: #e1a37d;">sauce4zwift-mod-tippy/pages/images/orangeConnect.png</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/redConnect.png" style="color: #f080de;">sauce4zwift-mod-tippy/pages/images/redConnect.png</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/images/whiteConnect.png" style="color: #e7b09a;">sauce4zwift-mod-tippy/pages/images/whiteConnect.png</a></li></ul>`;
                    break;
                case 'file-list-3':
                    file_list_html = `<ul><h2 style="color: #c7ce57;">sauce4zwift-mod-tippy/pages/settings</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/settings/DSNotes.html" style="color: #beb0a2;">sauce4zwift-mod-tippy/pages/settings/DSNotes.html</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/settings/estimatedFinish.html" style="color: #f4710d;">sauce4zwift-mod-tippy/pages/settings/estimatedFinish.html</a></li>
<h2 style="color: #f9a1c9;">sauce4zwift-mod-tippy/pages/src</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/DSNotes.mjs" style="color: #f3a1c4;">sauce4zwift-mod-tippy/pages/src/DSNotes.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/chaseRace.mjs" style="color: #a18d6f;">sauce4zwift-mod-tippy/pages/src/chaseRace.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/estimatedFinish.mjs" style="color: #23a8c0;">sauce4zwift-mod-tippy/pages/src/estimatedFinish.mjs</a></li>
<h2 style="color: #57ad5e;">sauce4zwift-mod-tippy/pages/src/BM</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/common.mjs" style="color: #7a8bfd;">sauce4zwift-mod-tippy/pages/src/BM/common.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/dataLookup.mjs" style="color: #76c31d;">sauce4zwift-mod-tippy/pages/src/BM/dataLookup.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/notesLookup.mjs" style="color: #5bbdb0;">sauce4zwift-mod-tippy/pages/src/BM/notesLookup.mjs</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/pages/src/BM/settings.mjs" style="color: #dea1e0;">sauce4zwift-mod-tippy/pages/src/BM/settings.mjs</a></li>
<h2 style="color: #c3ae89;">sauce4zwift-mod-tippy/src</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/sauce4zwift-mod-tippy/src/estimatedCalories.mjs" style="color: #c4c2a5;">sauce4zwift-mod-tippy/src/estimatedCalories.mjs</a></li>
<h2 style="color: #28e735;">src</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/src/generate_file_list.py" style="color: #be8f69;">src/generate_file_list.py</a></li>
<h2 style="color: #b270cc;">tests</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/MonitorZwift-v2.Tests.ps1" style="color: #68ab67;">tests/MonitorZwift-v2.Tests.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/test_OBSActivateAndRecord.ps1" style="color: #bf8d70;">tests/test_OBSActivateAndRecord.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_LaunchZwift.ps1" style="color: #bd69e5;">tests/tests_LaunchZwift.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_MoveZwiftCleanPhotos.ps1" style="color: #26b136;">tests/tests_MoveZwiftCleanPhotos.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_PowerToysAwake.ps1" style="color: #23b829;">tests/tests_PowerToysAwake.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_SetPrimaryDefault.ps1" style="color: #a6b079;">tests/tests_SetPrimaryDefault.ps1</a></li>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/tests_SetPrimaryZwift.ps1" style="color: #5787d6;">tests/tests_SetPrimaryZwift.ps1</a></li>
<h2 style="color: #fe648c;">tests/old</h2>
<li><a href="https://github.com/step-security-bot/ZwiftScripts/blob/main/tests/old/tests_MonitorZwift-v2_3.ps1" style="color: #3692f4;">tests/old/tests_MonitorZwift-v2_3.ps1</a></li></ul>`;
                    break;
            }
            placeholder.innerHTML = file_list_html;
        });
    }
});
</script>
