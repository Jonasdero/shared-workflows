Bumps the all-dependencies group with 3 updates: [actions/setup-node](https://github.com/actions/setup-node), [pnpm/action-setup](https://github.com/pnpm/action-setup) and [actions/upload-artifact](https://github.com/actions/upload-artifact).

Updates `actions/setup-node` from 6 to 7
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/actions/setup-node/releases">actions/setup-node's releases</a>.</em></p>
<blockquote>
<h2>v7.0.0</h2>
<h2>What's Changed</h2>
<h3>Enhancements:</h3>
<ul>
<li>Add cache-primary-key and cache-matched-key as outputs by <a href="https://github.com/gowridurgad"><code>@​gowridurgad</code></a> in <a href="https://redirect.github.com/actions/setup-node/pull/1577">actions/setup-node#1577</a></li>
<li>Migrate to ESM and upgrade dependencies by <a href="https://github.com/gowridurgad"><code>@​gowridurgad</code></a> in <a href="https://redirect.github.com/actions/setup-node/pull/1574">actions/setup-node#1574</a></li>
</ul>
<h3>Bug fixes:</h3>
<ul>
<li>Remove dummy NODE_AUTH_TOKEN export by <a href="https://github.com/gowridurgad"><code>@​gowridurgad</code></a> in <a href="https://redirect.github.com/actions/setup-node/pull/1558">actions/setup-node#1558</a></li>
<li>Only use <code>mirrorToken</code> in <code>getManifest</code> if it's provided by <a href="https://github.com/deiga"><code>@​deiga</code></a> in <a href="https://redirect.github.com/actions/setup-node/pull/1548">actions/setup-node#1548</a></li>
</ul>
<h3>Documentation updates:</h3>
<ul>
<li>Add documentation for publishing to npm with Trusted Publisher (OIDC) by <a href="https://github.com/chiranjib-swain"><code>@​chiranjib-swain</code></a> in <a href="https://redirect.github.com/actions/setup-node/pull/1536">actions/setup-node#1536</a></li>
<li>docs: Update restore-only cache documentation by <a href="https://github.com/priya-kinthali"><code>@​priya-kinthali</code></a> in <a href="https://redirect.github.com/actions/setup-node/pull/1550">actions/setup-node#1550</a></li>
<li>docs: Update caching recommendations to mitigate cache poisoning risks by <a href="https://github.com/chiranjib-swain"><code>@​chiranjib-swain</code></a> in <a href="https://redirect.github.com/actions/setup-node/pull/1567">actions/setup-node#1567</a></li>
</ul>
<h3>Dependency update:</h3>
<ul>
<li>Upgrade <code>@​actions/cache</code> to 5.1.0, log cache write denied by <a href="https://github.com/jasongin"><code>@​jasongin</code></a> in <a href="https://redirect.github.com/actions/setup-node/pull/1569">actions/setup-node#1569</a></li>
</ul>
<h2>New Contributors</h2>
<ul>
<li><a href="https://github.com/chiranjib-swain"><code>@​chiranjib-swain</code></a> made their first contribution in <a href="https://redirect.github.com/actions/setup-node/pull/1536">actions/setup-node#1536</a></li>
<li><a href="https://github.com/deiga"><code>@​deiga</code></a> made their first contribution in <a href="https://redirect.github.com/actions/setup-node/pull/1548">actions/setup-node#1548</a></li>
<li><a href="https://github.com/jasongin"><code>@​jasongin</code></a> made their first contribution in <a href="https://redirect.github.com/actions/setup-node/pull/1569">actions/setup-node#1569</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/actions/setup-node/compare/v6...v7.0.0">https://github.com/actions/setup-node/compare/v6...v7.0.0</a></p>
<h2>v6.5.0</h2>
<h2>What's Changed</h2>
<ul>
<li>Update <code>@​actions/cache</code> to 5.1.0 and add security overrides for undici and fast-xml-parser by <a href="https://github.com/HarithaVattikuti"><code>@​HarithaVattikuti</code></a> in <a href="https://redirect.github.com/actions/setup-node/pull/1579">actions/setup-node#1579</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/actions/setup-node/compare/v6.4.0...v6.5.0">https://github.com/actions/setup-node/compare/v6.4.0...v6.5.0</a></p>
<h2>v6.4.0</h2>
<h2>What's Changed</h2>
<h3>Dependency updates:</h3>
<ul>
<li>Upgrade <a href="https://github.com/actions"><code>@​actions</code></a> dependencies by <a href="https://github.com/Copilot"><code>@​Copilot</code></a> in <a href="https://redirect.github.com/actions/setup-node/pull/1525">actions/setup-node#1525</a></li>
<li>Update Node.js versions in versions.yml and bump package to v6.4.0  by <a href="https://github.com/priya-kinthali"><code>@​priya-kinthali</code></a> in <a href="https://redirect.github.com/actions/setup-node/pull/1533">actions/setup-node#1533</a></li>
</ul>
<h2>New Contributors</h2>
<ul>
<li><a href="https://github.com/Copilot"><code>@​Copilot</code></a> made their first contribution in <a href="https://redirect.github.com/actions/setup-node/pull/1525">actions/setup-node#1525</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/actions/setup-node/compare/v6...v6.4.0">https://github.com/actions/setup-node/compare/v6...v6.4.0</a></p>
<h2>v6.3.0</h2>
<h2>What's Changed</h2>
<h3>Enhancements:</h3>
<ul>
<li>Support parsing <code>devEngines</code> field by <a href="https://github.com/susnux"><code>@​susnux</code></a> in <a href="https://redirect.github.com/actions/setup-node/pull/1283">actions/setup-node#1283</a></li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href="https://github.com/actions/setup-node/commit/820762786026740c76f36085b0efc47a31fe5020"><code>8207627</code></a> Migrate to ESM and upgrade dependencies (<a href="https://redirect.github.com/actions/setup-node/issues/1574">#1574</a>)</li>
<li><a href="https://github.com/actions/setup-node/commit/04be95cf3511ea51ebf9f224ddfb99cc7ab87cd4"><code>04be95c</code></a> Add cache-primary-key and cache-matched-key as outputs (<a href="https://redirect.github.com/actions/setup-node/issues/1577">#1577</a>)</li>
<li><a href="https://github.com/actions/setup-node/commit/7c2c68d20d402ed6a201ada70a81341941093140"><code>7c2c68d</code></a> docs: Update caching recommendations to mitigate cache poisoning risks (<a href="https://redirect.github.com/actions/setup-node/issues/1567">#1567</a>)</li>
<li><a href="https://github.com/actions/setup-node/commit/6a61c0375d66246de94630495909f12cf8dac84d"><code>6a61c03</code></a> Merge pull request <a href="https://redirect.github.com/actions/setup-node/issues/1569">#1569</a> from jasongin/update-actions-cache-5.1.0</li>
<li><a href="https://github.com/actions/setup-node/commit/30eb73b41ded577900c1ebf968ef95cdf8f7434f"><code>30eb73b</code></a> Resolve high-severity audit issues</li>
<li><a href="https://github.com/actions/setup-node/commit/4e1a87a501d0302f99e30e2748568adcb388d09f"><code>4e1a87a</code></a> Update dist</li>
<li><a href="https://github.com/actions/setup-node/commit/360237f0c01778d0c17291f75c56d6feae4f7574"><code>360237f</code></a> Strict equality</li>
<li><a href="https://github.com/actions/setup-node/commit/4f8aac5beb2f0854bc79651567a18c67eb0b9de3"><code>4f8aac5</code></a> Bump <code>@​actions/cache</code> to 5.1.0, log cache write denied</li>
<li><a href="https://github.com/actions/setup-node/commit/f4a67bbeca970f103397d3d2b9462cf787cd2980"><code>f4a67bb</code></a> Only use <code>mirrorToken</code> in <code>getManifest</code> if it's provided (<a href="https://redirect.github.com/actions/setup-node/issues/1548">#1548</a>)</li>
<li><a href="https://github.com/actions/setup-node/commit/0355742c943ddb13ca8a6b700f824231caa91e75"><code>0355742</code></a> Remove dummy NODE_AUTH_TOKEN export (<a href="https://redirect.github.com/actions/setup-node/issues/1558">#1558</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/actions/setup-node/compare/v6...v7">compare view</a></li>
</ul>
</details>
<br />

Updates `pnpm/action-setup` from 4 to 6
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/pnpm/action-setup/releases">pnpm/action-setup's releases</a>.</em></p>
<blockquote>
<h2>v6.0.0</h2>
<p>Added support for pnpm <a href="https://github.com/pnpm/pnpm/releases/tag/v11.0.0-rc.0">v11</a>.</p>
<h2>v5.0.0</h2>
<p>Updated the action to use Node.js 24.</p>
<h2>v4.4.0</h2>
<p>Updated the action to use Node.js 24.</p>
<h2>v4.3.0</h2>
<h2>What's Changed</h2>
<ul>
<li>docs: fix the run_install example in the Readme by <a href="https://github.com/dreyks"><code>@​dreyks</code></a> in <a href="https://redirect.github.com/pnpm/action-setup/pull/175">pnpm/action-setup#175</a></li>
<li>chore: remove unused <code>@types/node-fetch</code> dependency by <a href="https://github.com/silverwind"><code>@​silverwind</code></a> in <a href="https://redirect.github.com/pnpm/action-setup/pull/186">pnpm/action-setup#186</a></li>
<li>Clarify that package_json_file is relative to GITHUB_WORKSPACE by <a href="https://github.com/chris-martin"><code>@​chris-martin</code></a> in <a href="https://redirect.github.com/pnpm/action-setup/pull/184">pnpm/action-setup#184</a></li>
<li>feat: store caching by <a href="https://github.com/jrmajor"><code>@​jrmajor</code></a> in <a href="https://redirect.github.com/pnpm/action-setup/pull/188">pnpm/action-setup#188</a></li>
<li>refactor: remove star imports by <a href="https://github.com/KSXGitHub"><code>@​KSXGitHub</code></a> in <a href="https://redirect.github.com/pnpm/action-setup/pull/196">pnpm/action-setup#196</a></li>
<li>fix(ci): exclude macos by <a href="https://github.com/KSXGitHub"><code>@​KSXGitHub</code></a> in <a href="https://redirect.github.com/pnpm/action-setup/pull/197">pnpm/action-setup#197</a></li>
</ul>
<h2>New Contributors</h2>
<ul>
<li><a href="https://github.com/dreyks"><code>@​dreyks</code></a> made their first contribution in <a href="https://redirect.github.com/pnpm/action-setup/pull/175">pnpm/action-setup#175</a></li>
<li><a href="https://github.com/silverwind"><code>@​silverwind</code></a> made their first contribution in <a href="https://redirect.github.com/pnpm/action-setup/pull/186">pnpm/action-setup#186</a></li>
<li><a href="https://github.com/chris-martin"><code>@​chris-martin</code></a> made their first contribution in <a href="https://redirect.github.com/pnpm/action-setup/pull/184">pnpm/action-setup#184</a></li>
<li><a href="https://github.com/jrmajor"><code>@​jrmajor</code></a> made their first contribution in <a href="https://redirect.github.com/pnpm/action-setup/pull/188">pnpm/action-setup#188</a></li>
<li><a href="https://github.com/Boosted-Bonobo"><code>@​Boosted-Bonobo</code></a> made their first contribution in <a href="https://redirect.github.com/pnpm/action-setup/pull/199">pnpm/action-setup#199</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/pnpm/action-setup/compare/v4.2.0...v4.3.0">https://github.com/pnpm/action-setup/compare/v4.2.0...v4.3.0</a></p>
<h2>v4.2.0</h2>
<p>When there's a <code>.npmrc</code> file at the root of the repository, pnpm will be fetched from the registry that is specified in that <code>.npmrc</code> file <a href="https://redirect.github.com/pnpm/action-setup/pull/179">#179</a></p>
<h2>v4.1.0</h2>
<p>Add support for <code>package.yaml</code> <a href="https://redirect.github.com/pnpm/action-setup/pull/156">#156</a>.</p>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href="https://github.com/pnpm/action-setup/commit/0977fd99725f1db4007ccb2928dbb4e90d06cc86"><code>0977fd9</code></a> docs: Update README to include devEngines.packageManager (<a href="https://redirect.github.com/pnpm/action-setup/issues/273">#273</a>)</li>
<li><a href="https://github.com/pnpm/action-setup/commit/48261aca053e825d84804e8ce05524d558249ac9"><code>48261ac</code></a> fix: update pnpm to v11.19.0 (<a href="https://redirect.github.com/pnpm/action-setup/issues/283">#283</a>)</li>
<li><a href="https://github.com/pnpm/action-setup/commit/75677f717d48404e86ae8ee4891543f40de175aa"><code>75677f7</code></a> ci: use pnpm 11 for <code>pr-check</code> (<a href="https://redirect.github.com/pnpm/action-setup/issues/284">#284</a>)</li>
<li><a href="https://github.com/pnpm/action-setup/commit/769ae71fb33e6e448a5dc92ad5da997c268eecec"><code>769ae71</code></a> refactor: introduce restore keys for cache (<a href="https://redirect.github.com/pnpm/action-setup/issues/280">#280</a>)</li>
<li><a href="https://github.com/pnpm/action-setup/commit/6fed91f804570c1144bfe1911c348642cb986bd4"><code>6fed91f</code></a> docs(README): point users to the successor pnpm/setup action (<a href="https://redirect.github.com/pnpm/action-setup/issues/282">#282</a>)</li>
<li><a href="https://github.com/pnpm/action-setup/commit/0ebf47130e4866e96fce0953f49152a61190b271"><code>0ebf471</code></a> fix: update pnpm to v11.7.0 (<a href="https://redirect.github.com/pnpm/action-setup/issues/267">#267</a>)</li>
<li><a href="https://github.com/pnpm/action-setup/commit/0e279bb959325dab635dd2c09392533439d90093"><code>0e279bb</code></a> fix: update pnpm to 11.1.1 (<a href="https://redirect.github.com/pnpm/action-setup/issues/248">#248</a>)</li>
<li><a href="https://github.com/pnpm/action-setup/commit/3e835812ef01165f4f8ae08ade56da44427ed4e0"><code>3e83581</code></a> fix: drop patchPnpmEnv so standalone+self-update works on Windows (<a href="https://redirect.github.com/pnpm/action-setup/issues/258">#258</a>)</li>
<li><a href="https://github.com/pnpm/action-setup/commit/551b42e879e37e74d986effdd2a1647d2b02d464"><code>551b42e</code></a> docs(README): fix <code>cache_dependency_path</code> type (<a href="https://redirect.github.com/pnpm/action-setup/issues/257">#257</a>)</li>
<li><a href="https://github.com/pnpm/action-setup/commit/739bfe42ca9233c5e6aca07c1a25a9d34aca49b0"><code>739bfe4</code></a> fix: self-update bootstrap to packageManager-pinned version (<a href="https://redirect.github.com/pnpm/action-setup/issues/233">#233</a>) (<a href="https://redirect.github.com/pnpm/action-setup/issues/256">#256</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/pnpm/action-setup/compare/v4...v6">compare view</a></li>
</ul>
</details>
<br />

Updates `actions/upload-artifact` from 5 to 7
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/actions/upload-artifact/releases">actions/upload-artifact's releases</a>.</em></p>
<blockquote>
<h2>v7.0.0</h2>
<h2>v7 What's new</h2>
<h3>Direct Uploads</h3>
<p>Adds support for uploading single files directly (unzipped). Callers can set the new <code>archive</code> parameter to <code>false</code> to skip zipping the file during upload. Right now, we only support single files. The action will fail if the glob passed resolves to multiple files. The <code>name</code> parameter is also ignored with this setting. Instead, the name of the artifact will be the name of the uploaded file.</p>
<h3>ESM</h3>
<p>To support new versions of the <code>@actions/*</code> packages, we've upgraded the package to ESM.</p>
<h2>What's Changed</h2>
<ul>
<li>Add proxy integration test by <a href="https://github.com/Link"><code>@​Link</code></a>- in <a href="https://redirect.github.com/actions/upload-artifact/pull/754">actions/upload-artifact#754</a></li>
<li>Upgrade the module to ESM and bump dependencies by <a href="https://github.com/danwkennedy"><code>@​danwkennedy</code></a> in <a href="https://redirect.github.com/actions/upload-artifact/pull/762">actions/upload-artifact#762</a></li>
<li>Support direct file uploads by <a href="https://github.com/danwkennedy"><code>@​danwkennedy</code></a> in <a href="https://redirect.github.com/actions/upload-artifact/pull/764">actions/upload-artifact#764</a></li>
</ul>
<h2>New Contributors</h2>
<ul>
<li><a href="https://github.com/Link"><code>@​Link</code></a>- made their first contribution in <a href="https://redirect.github.com/actions/upload-artifact/pull/754">actions/upload-artifact#754</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/actions/upload-artifact/compare/v6...v7.0.0">https://github.com/actions/upload-artifact/compare/v6...v7.0.0</a></p>
<h2>v6.0.0</h2>
<h2>v6 - What's new</h2>
<blockquote>
<p>[!IMPORTANT]
actions/upload-artifact@v6 now runs on Node.js 24 (<code>runs.using: node24</code>) and requires a minimum Actions Runner version of 2.327.1. If you are using self-hosted runners, ensure they are updated before upgrading.</p>
</blockquote>
<h3>Node.js 24</h3>
<p>This release updates the runtime to Node.js 24. v5 had preliminary support for Node.js 24, however this action was by default still running on Node.js 20. Now this action by default will run on Node.js 24.</p>
<h2>What's Changed</h2>
<ul>
<li>Upload Artifact Node 24 support by <a href="https://github.com/salmanmkc"><code>@​salmanmkc</code></a> in <a href="https://redirect.github.com/actions/upload-artifact/pull/719">actions/upload-artifact#719</a></li>
<li>fix: update <code>@​actions/artifact</code> for Node.js 24 punycode deprecation by <a href="https://github.com/salmanmkc"><code>@​salmanmkc</code></a> in <a href="https://redirect.github.com/actions/upload-artifact/pull/744">actions/upload-artifact#744</a></li>
<li>prepare release v6.0.0 for Node.js 24 support by <a href="https://github.com/salmanmkc"><code>@​salmanmkc</code></a> in <a href="https://redirect.github.com/actions/upload-artifact/pull/745">actions/upload-artifact#745</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/actions/upload-artifact/compare/v5.0.0...v6.0.0">https://github.com/actions/upload-artifact/compare/v5.0.0...v6.0.0</a></p>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href="https://github.com/actions/upload-artifact/commit/043fb46d1a93c77aae656e7c1c64a875d1fc6a0a"><code>043fb46</code></a> Merge pull request <a href="https://redirect.github.com/actions/upload-artifact/issues/797">#797</a> from actions/yacaovsnc/update-dependency</li>
<li><a href="https://github.com/actions/upload-artifact/commit/634250c1388765ea7ed0f053e636f1f399000b94"><code>634250c</code></a> Include changes in typespec/ts-http-runtime 0.3.5</li>
<li><a href="https://github.com/actions/upload-artifact/commit/e454baaac2be505c9450e11b8f3215c6fc023ce8"><code>e454baa</code></a> Readme: bump all the example versions to v7 (<a href="https://redirect.github.com/actions/upload-artifact/issues/796">#796</a>)</li>
<li><a href="https://github.com/actions/upload-artifact/commit/74fad66b98a6d799dc004d3353ccd0e6f6b2530e"><code>74fad66</code></a> Update the readme with direct upload details (<a href="https://redirect.github.com/actions/upload-artifact/issues/795">#795</a>)</li>
<li><a href="https://github.com/actions/upload-artifact/commit/bbbca2ddaa5d8feaa63e36b76fdaad77386f024f"><code>bbbca2d</code></a> Support direct file uploads (<a href="https://redirect.github.com/actions/upload-artifact/issues/764">#764</a>)</li>
<li><a href="https://github.com/actions/upload-artifact/commit/589182c5a4cec8920b8c1bce3e2fab1c97a02296"><code>589182c</code></a> Upgrade the module to ESM and bump dependencies (<a href="https://redirect.github.com/actions/upload-artifact/issues/762">#762</a>)</li>
<li><a href="https://github.com/actions/upload-artifact/commit/47309c993abb98030a35d55ef7ff34b7fa1074b5"><code>47309c9</code></a> Merge pull request <a href="https://redirect.github.com/actions/upload-artifact/issues/754">#754</a> from actions/Link-/add-proxy-integration-tests</li>
<li><a href="https://github.com/actions/upload-artifact/commit/02a8460834e70dab0ce194c64360c59dc1475ef0"><code>02a8460</code></a> Add proxy integration test</li>
<li><a href="https://github.com/actions/upload-artifact/commit/b7c566a772e6b6bfb58ed0dc250532a479d7789f"><code>b7c566a</code></a> Merge pull request <a href="https://redirect.github.com/actions/upload-artifact/issues/745">#745</a> from actions/upload-artifact-v6-release</li>
<li><a href="https://github.com/actions/upload-artifact/commit/e516bc8500aaf3d07d591fcd4ae6ab5f9c391d5b"><code>e516bc8</code></a> docs: correct description of Node.js 24 support in README</li>
<li>Additional commits viewable in <a href="https://github.com/actions/upload-artifact/compare/v5...v7">compare view</a></li>
</ul>
</details>
<br />


Dependabot will resolve any conflicts with this PR as long as you don't alter it yourself. You can also trigger a rebase manually by commenting `@dependabot rebase`.

[//]: # (dependabot-automerge-start)
[//]: # (dependabot-automerge-end)

---

<details>
<summary>Dependabot commands and options</summary>
<br />

You can trigger Dependabot actions by commenting on this PR:
- `@dependabot rebase` will rebase this PR
- `@dependabot recreate` will recreate this PR, overwriting any edits that have been made to it
- `@dependabot show <dependency name> ignore conditions` will show all of the ignore conditions of the specified dependency
- `@dependabot ignore <dependency name> major version` will close this group update PR and stop Dependabot creating any more for the specific dependency's major version (unless you unignore this specific dependency's major version or upgrade to it yourself)
- `@dependabot ignore <dependency name> minor version` will close this group update PR and stop Dependabot creating any more for the specific dependency's minor version (unless you unignore this specific dependency's minor version or upgrade to it yourself)
- `@dependabot ignore <dependency name>` will close this group update PR and stop Dependabot creating any more for the specific dependency (unless you unignore this specific dependency or upgrade to it yourself)
- `@dependabot unignore <dependency name>` will remove all of the ignore conditions of the specified dependency
- `@dependabot unignore <dependency name> <ignore condition>` will remove the ignore condition of the specified dependency and ignore conditions


</details>
