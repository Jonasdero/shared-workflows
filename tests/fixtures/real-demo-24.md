Bumps the all-dependencies group with 2 updates: [wrangler](https://github.com/cloudflare/workers-sdk/tree/HEAD/packages/wrangler) and [@cloudflare/workers-types](https://github.com/cloudflare/workerd).

Updates `wrangler` from 4.142.0 to 4.143.1
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/cloudflare/workers-sdk/releases">wrangler's releases</a>.</em></p>
<blockquote>
<h2>wrangler@4.143.1</h2>
<h3>Patch Changes</h3>
<ul>
<li>
<p><a href="https://redirect.github.com/cloudflare/workers-sdk/pull/15159">#15159</a> <a href="https://github.com/cloudflare/workers-sdk/commit/7bb6eaea0d1d68df2e130ed870ee7ca9aa68bc74"><code>7bb6eae</code></a> Thanks <a href="https://github.com/veggiedefender"><code>@​veggiedefender</code></a>! - Fix <code>wrangler dev</code> remote bindings for <code>workers.dev</code> subdomains protected by Access</p>
<p>Running <code>wrangler dev</code> with remote bindings on an unpublished worker protected by Access (e.g. using a wildcard on your workers.dev domain) previously failed with a redirect loop. Wrangler now correctly authenticates remote bindings with Access in this situation.</p>
</li>
<li>
<p><a href="https://redirect.github.com/cloudflare/workers-sdk/pull/15923">#15923</a> <a href="https://github.com/cloudflare/workers-sdk/commit/60ccdbd5e760c3dc721ac082acaa25a6cff5e8bb"><code>60ccdbd</code></a> Thanks <a href="https://github.com/petebacondarwin"><code>@​petebacondarwin</code></a>! - Upgrade the bundled capnweb implementation to 0.12.0</p>
<p>This updates the RPC implementation shipped in Miniflare and remote-binding proxy workers to the latest capnweb release.</p>
</li>
<li>
<p><a href="https://redirect.github.com/cloudflare/workers-sdk/pull/15938">#15938</a> <a href="https://github.com/cloudflare/workers-sdk/commit/62fd03a21e227f30d3c254244d22a30e9f5924dd"><code>62fd03a</code></a> Thanks <a href="https://github.com/dieub"><code>@​dieub</code></a>! - Resolve the affected Undici dependency in new Wrangler and Vite plugin installs</p>
<p>Undici 7.29.1 fixes GHSA-3wwx-pv8p-q78v. Update the shared dependency catalog and matching types used by Miniflare and Wrangler so downstream installs can resolve the patched runtime without an application-level override. A published release is still required for consumers; this changeset does not alter already published package metadata.</p>
</li>
<li>
<p><a href="https://redirect.github.com/cloudflare/workers-sdk/pull/15903">#15903</a> <a href="https://github.com/cloudflare/workers-sdk/commit/06ed9c8b55bcac37f8750a1f46e1a4290ff8eae9"><code>06ed9c8</code></a> Thanks <a href="https://github.com/itsmunzir"><code>@​itsmunzir</code></a>! - Fix custom-domain-only deploys failing for API tokens without Zone Workers Routes read permission</p>
<p>When <code>workers_dev</code> was disabled and <code>routes</code> contained only entries with <code>custom_domain: true</code>, every deploy after the first one fetched <code>/zones/:zoneId/workers/routes</code> to check for route conflicts, even though custom domains are not zone Workers Routes. Tokens scoped to Workers Scripts edit plus custom domains - without <code>Zone &gt; Workers Routes &gt; Read</code> - failed with &quot;No access to the specified resource&quot; after the Worker version had already been uploaded. The conflict check now only covers non-custom-domain routes; custom domain conflicts continue to be reported by the custom domains changeset API.</p>
</li>
<li>
<p><a href="https://redirect.github.com/cloudflare/workers-sdk/pull/15887">#15887</a> <a href="https://github.com/cloudflare/workers-sdk/commit/86211feed191f3d181e16836e62b1875ae6e6606"><code>86211fe</code></a> Thanks <a href="https://github.com/alepacheco"><code>@​alepacheco</code></a>! - Report an unreachable auth server instead of an expired login when refreshing an OAuth token</p>
<p>When the OAuth token endpoint could not be reached (for example a DNS failure or a connection timeout), the refresh failure was reported as &quot;Your auth token has expired and could not be refreshed&quot;, with advice to run <code>wrangler login</code>; in an interactive terminal Wrangler also started a new browser login. A network failure says nothing about the stored refresh token, and a new login would need the same unreachable server. Wrangler now reports that the Cloudflare auth server could not be reached, leaves the stored credentials unchanged, and does not start a login, so the next run can refresh with the same token once the network is back.</p>
</li>
<li>
<p>Updated dependencies [<a href="https://github.com/cloudflare/workers-sdk/commit/60ccdbd5e760c3dc721ac082acaa25a6cff5e8bb"><code>60ccdbd</code></a>, <a href="https://github.com/cloudflare/workers-sdk/commit/62fd03a21e227f30d3c254244d22a30e9f5924dd"><code>62fd03a</code></a>, <a href="https://github.com/cloudflare/workers-sdk/commit/c2bb4c815f8a6af2ebea17ab6dd4f612c7b1e8eb"><code>c2bb4c8</code></a>, <a href="https://github.com/cloudflare/workers-sdk/commit/eb1efe08db8dde7b6db4b8d959c381b3e5ebe3a4"><code>eb1efe0</code></a>, <a href="https://github.com/cloudflare/workers-sdk/commit/485cfb3abfd9715632edc6c30a78a680c1765604"><code>485cfb3</code></a>]:</p>
<ul>
<li><a href="mailto:miniflare@5.20260926.1-alpha">miniflare@5.20260926.1-alpha</a></li>
</ul>
</li>
</ul>
<h2>wrangler@4.143.0</h2>
<h3>Minor Changes</h3>
<ul>
<li>
<p><a href="https://redirect.github.com/cloudflare/workers-sdk/pull/15914">#15914</a> <a href="https://github.com/cloudflare/workers-sdk/commit/7f0734c3174b1ec3ec1718058337626ff106b2e6"><code>7f0734c</code></a> Thanks <a href="https://github.com/jamesopstad"><code>@​jamesopstad</code></a>! - Use <code>cf/config</code> for <code>cloudflare.config.ts</code> authoring</p>
<p>Experimental <code>cloudflare.config.ts</code> projects must now import <code>defineConfig</code>, bindings, triggers, and related helpers from <code>cf/config</code>. Generated declarations from Wrangler and the Vite plugin also reference this package, so projects using the experimental configuration flow must add <code>cf</code> as a dependency.</p>
<p>The Vite plugin no longer exports <code>@cloudflare/vite-plugin/experimental-config</code>. <code>wrangler/experimental-config</code> remains available for <code>defineWranglerConfig</code>, but no longer re-exports Cloudflare configuration helpers.</p>
</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href="https://github.com/cloudflare/workers-sdk/commit/d866c0922b8973b38aac0eddf1fdd86a3ac0c7bd"><code>d866c09</code></a> Version Packages (<a href="https://github.com/cloudflare/workers-sdk/tree/HEAD/packages/wrangler/issues/15929">#15929</a>)</li>
<li><a href="https://github.com/cloudflare/workers-sdk/commit/86211feed191f3d181e16836e62b1875ae6e6606"><code>86211fe</code></a> fix(workers-auth): report an unreachable auth server instead of an expired lo...</li>
<li><a href="https://github.com/cloudflare/workers-sdk/commit/7bb6eaea0d1d68df2e130ed870ee7ca9aa68bc74"><code>7bb6eae</code></a> Include preview token in Access probes and login (<a href="https://github.com/cloudflare/workers-sdk/tree/HEAD/packages/wrangler/issues/15159">#15159</a>)</li>
<li><a href="https://github.com/cloudflare/workers-sdk/commit/06ed9c8b55bcac37f8750a1f46e1a4290ff8eae9"><code>06ed9c8</code></a> [wrangler] Fix custom-domain-only deploys requiring Zone Workers Routes permi...</li>
<li><a href="https://github.com/cloudflare/workers-sdk/commit/3bdcd0d46102289e7ef417c4fb3086ea77a18fb1"><code>3bdcd0d</code></a> Version Packages (<a href="https://github.com/cloudflare/workers-sdk/tree/HEAD/packages/wrangler/issues/15909">#15909</a>)</li>
<li><a href="https://github.com/cloudflare/workers-sdk/commit/087ea32b10d71055d495a8a7a1a4ec3846e2c860"><code>087ea32</code></a> Revert &quot;[wrangler] Add base path config to wrangler (<a href="https://github.com/cloudflare/workers-sdk/tree/HEAD/packages/wrangler/issues/15754">#15754</a>)&quot; (<a href="https://github.com/cloudflare/workers-sdk/tree/HEAD/packages/wrangler/issues/15915">#15915</a>)</li>
<li><a href="https://github.com/cloudflare/workers-sdk/commit/7f0734c3174b1ec3ec1718058337626ff106b2e6"><code>7f0734c</code></a> Use <code>cf/config</code> for <code>cloudflare.config.ts</code> authoring (<a href="https://github.com/cloudflare/workers-sdk/tree/HEAD/packages/wrangler/issues/15914">#15914</a>)</li>
<li><a href="https://github.com/cloudflare/workers-sdk/commit/40e9fafb235e363bcc19951f3db566c60c0acf67"><code>40e9faf</code></a> [wrangler] Add base path config to wrangler (<a href="https://github.com/cloudflare/workers-sdk/tree/HEAD/packages/wrangler/issues/15754">#15754</a>)</li>
<li>See full diff in <a href="https://github.com/cloudflare/workers-sdk/commits/wrangler@4.143.1/packages/wrangler">compare view</a></li>
</ul>
</details>
<br />

Updates `@cloudflare/workers-types` from 5.20260928.1 to 5.20260929.1
<details>
<summary>Commits</summary>
<ul>
<li>See full diff in <a href="https://github.com/cloudflare/workerd/commits">compare view</a></li>
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
