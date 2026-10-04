Bumps the all-dependencies group with 12 updates in the / directory:

| Package | From | To |
| --- | --- | --- |
| [@astrojs/cloudflare](https://github.com/withastro/astro/tree/HEAD/packages/integrations/cloudflare) | `14.0.0` | `14.3.3` |
| [@astrojs/markdown-remark](https://github.com/withastro/astro/tree/HEAD/packages/markdown/remark) | `7.3.0` | `7.3.1` |
| [@astrojs/mdx](https://github.com/withastro/astro/tree/HEAD/packages/integrations/mdx) | `8.0.0` | `8.0.2` |
| [astro](https://github.com/withastro/astro/tree/HEAD/packages/astro) | `7.3.1` | `7.3.5` |
| [lucide-react](https://github.com/lucide-icons/lucide/tree/HEAD/packages/lucide-react) | `1.38.0` | `1.48.0` |
| [react](https://github.com/react/react/tree/HEAD/packages/react) | `19.2.8` | `19.3.0` |
| [react-dom](https://github.com/react/react/tree/HEAD/packages/react-dom) | `19.2.8` | `19.3.0` |
| [resend](https://github.com/resend/resend-node) | `6.25.0` | `6.30.0` |
| [tailwind-merge](https://github.com/dcastil/tailwind-merge/tree/HEAD/packages/tailwind-merge) | `3.6.0` | `3.7.0` |
| [@types/node](https://github.com/DefinitelyTyped/DefinitelyTyped/tree/HEAD/types/node) | `26.4.0` | `26.6.3` |
| [playwright](https://github.com/microsoft/playwright) | `1.62.1` | `1.63.0` |
| [prettier](https://github.com/prettier/prettier) | `3.9.6` | `3.9.9` |


Updates `@astrojs/cloudflare` from 14.0.0 to 14.3.3
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/withastro/astro/releases">@astrojs/cloudflare's releases</a>.</em></p>
<blockquote>
<h2><code>@astrojs/cloudflare</code><a href="https://github.com/14"><code>@14</code></a>.3.3</h2>
<h3>Patch Changes</h3>
<ul>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/18059">#18059</a> <a href="https://github.com/withastro/astro/commit/30cb32e82b68a09c776f5bd205b07db8e1c9285c"><code>30cb32e</code></a> Thanks <a href="https://github.com/Princesseuh"><code>@Princesseuh</code></a>! - Fixes image transforms without a specified quality outputting an higher quality than expected on certain formats</p>
</li>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/18091">#18091</a> <a href="https://github.com/withastro/astro/commit/28d59a92f99f6b1acbafb98e6b1e2f22bb74c71f"><code>28d59a9</code></a> Thanks <a href="https://github.com/apps/astro-factory"><code>@astro-factory</code></a>! - Fixes <code>optimizeDeps.include</code> glob <code>astro/runtime/**</code> matching <code>.d.ts</code> files, which caused 83 unnecessary optimizer entries and empty output chunks per environment during dev</p>
</li>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/18032">#18032</a> <a href="https://github.com/withastro/astro/commit/f7dbc6a2b736bb26ef286c3bbcf66d19bf6b215f"><code>f7dbc6a</code></a> Thanks <a href="https://github.com/adamchal"><code>@adamchal</code></a>! - Fixes image requests when using <code>imageService: 'compile'</code> with <code>passthroughImageService()</code>.</p>
</li>
<li>
<p>Updated dependencies []:</p>
<ul>
<li><code>@astrojs/underscore-redirects</code><a href="https://github.com/1"><code>@1</code></a>.0.4</li>
</ul>
</li>
</ul>
<h2><code>@astrojs/cloudflare</code><a href="https://github.com/14"><code>@14</code></a>.3.2</h2>
<h3>Patch Changes</h3>
<ul>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/17958">#17958</a> <a href="https://github.com/withastro/astro/commit/b95c574b2ef5ab5541888a860aad5bf2d3a765ea"><code>b95c574</code></a> Thanks <a href="https://github.com/apps/astro-factory"><code>@astro-factory</code></a>! - Fixes a build failure when the wrangler config uses the <code>exports</code> field to declare Durable Object classes</p>
</li>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/18022">#18022</a> <a href="https://github.com/withastro/astro/commit/24946f745a6fc1e85b8ae271322a1a35b24a4857"><code>24946f7</code></a> Thanks <a href="https://github.com/matthewp"><code>@matthewp</code></a>! - Fixes cold <code>astro dev</code> crashes when using the passthrough image service</p>
</li>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/17842">#17842</a> <a href="https://github.com/withastro/astro/commit/d68db7311132083dabee85e87a323542249f5228"><code>d68db73</code></a> Thanks <a href="https://github.com/adamchal"><code>@adamchal</code></a>! - Fixes broken images on static sites by transforming prerendered images at build time with the default Cloudflare Images binding</p>
</li>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/17945">#17945</a> <a href="https://github.com/withastro/astro/commit/750b4dbe238f2a2b979503ffd780f46d19174ccb"><code>750b4db</code></a> Thanks <a href="https://github.com/matthewp"><code>@matthewp</code></a>! - Pre-bundles renderer server entrypoints and the default console logger during dev so they are included in the initial optimization pass, preventing a mid-request re-optimization that could crash the dev server on Cloudflare (workerd).</p>
</li>
<li>
<p>Updated dependencies []:</p>
<ul>
<li><code>@astrojs/underscore-redirects</code><a href="https://github.com/1"><code>@1</code></a>.0.4</li>
</ul>
</li>
</ul>
<h2><code>@astrojs/cloudflare</code><a href="https://github.com/14"><code>@14</code></a>.3.1</h2>
<h3>Patch Changes</h3>
<ul>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/17914">#17914</a> <a href="https://github.com/withastro/astro/commit/a40050476598ee856cd44cee6976a5d63c81db86"><code>a400504</code></a> Thanks <a href="https://github.com/apps/astro-factory"><code>@astro-factory</code></a>! - Fixes a build crash when a custom worker entrypoint exports Durable Object classes alongside prerendered pages. The prerender worker no longer inherits <code>durable_objects</code>, <code>migrations</code>, or <code>workflows</code> from the entry worker config.</p>
</li>
<li>
<p>Updated dependencies []:</p>
<ul>
<li><code>@astrojs/underscore-redirects</code><a href="https://github.com/1"><code>@1</code></a>.0.4</li>
</ul>
</li>
</ul>
<h2><code>@astrojs/cloudflare</code><a href="https://github.com/14"><code>@14</code></a>.3.0</h2>
<h3>Minor Changes</h3>
<ul>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/17795">#17795</a> <a href="https://github.com/withastro/astro/commit/15e2debc7e81d353410ff76a76c3bf75b7fb3070"><code>15e2deb</code></a> Thanks <a href="https://github.com/matthewp"><code>@matthewp</code></a>! - Adds concurrent rendering support for <code>experimental.incrementalBuild</code>, including when using <code>@astrojs/cloudflare</code></p>
<p>Incremental builds no longer disable caching when <code>build.concurrency</code> is greater than <code>1</code>. Projects that set <code>build.concurrency: 1</code> to keep the cache enabled can remove that workaround. Cloudflare builds also reduce serialization overhead for large prerendered pages.</p>
</li>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/17887">#17887</a> <a href="https://github.com/withastro/astro/commit/35aa62e60226d81cda281d0b9355abcfa29d889d"><code>35aa62e</code></a> Thanks <a href="https://github.com/matthewp"><code>@matthewp</code></a>! - Adds a Cloudflare <code>finalize()</code> response handler for custom request handlers</p>
<p>Call <code>finalize()</code> to apply cookies and Cloudflare CDN cache defaults to the response from an <code>astro/fetch</code> pipeline:</p>
<pre lang="ts"><code>import { astro, FetchState } from 'astro/fetch';
import { cf, finalize } from '@astrojs/cloudflare/fetch';
<p>export default {
async fetch(request: Request, env: Env, context: ExecutionContext) {
const state = new FetchState(request);
</code></pre></p>
</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/withastro/astro/blob/main/packages/integrations/cloudflare/CHANGELOG.md">@astrojs/cloudflare's changelog</a>.</em></p>
<blockquote>
<h2>14.3.3</h2>
<h3>Patch Changes</h3>
<ul>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/18059">#18059</a> <a href="https://github.com/withastro/astro/commit/30cb32e82b68a09c776f5bd205b07db8e1c9285c"><code>30cb32e</code></a> Thanks <a href="https://github.com/Princesseuh"><code>@Princesseuh</code></a>! - Fixes image transforms without a specified quality outputting an higher quality than expected on certain formats</p>
</li>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/18091">#18091</a> <a href="https://github.com/withastro/astro/commit/28d59a92f99f6b1acbafb98e6b1e2f22bb74c71f"><code>28d59a9</code></a> Thanks <a href="https://github.com/apps/astro-factory"><code>@astro-factory</code></a>! - Fixes <code>optimizeDeps.include</code> glob <code>astro/runtime/**</code> matching <code>.d.ts</code> files, which caused 83 unnecessary optimizer entries and empty output chunks per environment during dev</p>
</li>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/18032">#18032</a> <a href="https://github.com/withastro/astro/commit/f7dbc6a2b736bb26ef286c3bbcf66d19bf6b215f"><code>f7dbc6a</code></a> Thanks <a href="https://github.com/adamchal"><code>@adamchal</code></a>! - Fixes image requests when using <code>imageService: 'compile'</code> with <code>passthroughImageService()</code>.</p>
</li>
<li>
<p>Updated dependencies []:</p>
<ul>
<li><code>@astrojs/underscore-redirects</code><a href="https://github.com/1"><code>@1</code></a>.0.4</li>
</ul>
</li>
</ul>
<h2>14.3.2</h2>
<h3>Patch Changes</h3>
<ul>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/17958">#17958</a> <a href="https://github.com/withastro/astro/commit/b95c574b2ef5ab5541888a860aad5bf2d3a765ea"><code>b95c574</code></a> Thanks <a href="https://github.com/apps/astro-factory"><code>@astro-factory</code></a>! - Fixes a build failure when the wrangler config uses the <code>exports</code> field to declare Durable Object classes</p>
</li>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/18022">#18022</a> <a href="https://github.com/withastro/astro/commit/24946f745a6fc1e85b8ae271322a1a35b24a4857"><code>24946f7</code></a> Thanks <a href="https://github.com/matthewp"><code>@matthewp</code></a>! - Fixes cold <code>astro dev</code> crashes when using the passthrough image service</p>
</li>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/17842">#17842</a> <a href="https://github.com/withastro/astro/commit/d68db7311132083dabee85e87a323542249f5228"><code>d68db73</code></a> Thanks <a href="https://github.com/adamchal"><code>@adamchal</code></a>! - Fixes broken images on static sites by transforming prerendered images at build time with the default Cloudflare Images binding</p>
</li>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/17945">#17945</a> <a href="https://github.com/withastro/astro/commit/750b4dbe238f2a2b979503ffd780f46d19174ccb"><code>750b4db</code></a> Thanks <a href="https://github.com/matthewp"><code>@matthewp</code></a>! - Pre-bundles renderer server entrypoints and the default console logger during dev so they are included in the initial optimization pass, preventing a mid-request re-optimization that could crash the dev server on Cloudflare (workerd).</p>
</li>
<li>
<p>Updated dependencies []:</p>
<ul>
<li><code>@astrojs/underscore-redirects</code><a href="https://github.com/1"><code>@1</code></a>.0.4</li>
</ul>
</li>
</ul>
<h2>14.3.1</h2>
<h3>Patch Changes</h3>
<ul>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/17914">#17914</a> <a href="https://github.com/withastro/astro/commit/a40050476598ee856cd44cee6976a5d63c81db86"><code>a400504</code></a> Thanks <a href="https://github.com/apps/astro-factory"><code>@astro-factory</code></a>! - Fixes a build crash when a custom worker entrypoint exports Durable Object classes alongside prerendered pages. The prerender worker no longer inherits <code>durable_objects</code>, <code>migrations</code>, or <code>workflows</code> from the entry worker config.</p>
</li>
<li>
<p>Updated dependencies []:</p>
<ul>
<li><code>@astrojs/underscore-redirects</code><a href="https://github.com/1"><code>@1</code></a>.0.4</li>
</ul>
</li>
</ul>
<h2>14.3.0</h2>
<h3>Minor Changes</h3>
<ul>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/17795">#17795</a> <a href="https://github.com/withastro/astro/commit/15e2debc7e81d353410ff76a76c3bf75b7fb3070"><code>15e2deb</code></a> Thanks <a href="https://github.com/matthewp"><code>@matthewp</code></a>! - Adds concurrent rendering support for <code>experimental.incrementalBuild</code>, including when using <code>@astrojs/cloudflare</code></p>
<p>Incremental builds no longer disable caching when <code>build.concurrency</code> is greater than <code>1</code>. Projects that set <code>build.concurrency: 1</code> to keep the cache enabled can remove that workaround. Cloudflare builds also reduce serialization overhead for large prerendered pages.</p>
</li>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/17887">#17887</a> <a href="https://github.com/withastro/astro/commit/35aa62e60226d81cda281d0b9355abcfa29d889d"><code>35aa62e</code></a> Thanks <a href="https://github.com/matthewp"><code>@matthewp</code></a>! - Adds a Cloudflare <code>finalize()</code> response handler for custom request handlers</p>
<p>Call <code>finalize()</code> to apply cookies and Cloudflare CDN cache defaults to the response from an <code>astro/fetch</code> pipeline:</p>
<pre lang="ts"><code>import { astro, FetchState } from 'astro/fetch';
import { cf, finalize } from '@astrojs/cloudflare/fetch';
</code></pre>
</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href="https://github.com/withastro/astro/commit/790c6f720efd9de362e7a2b6319ac2d721062bda"><code>790c6f7</code></a> [ci] release (<a href="https://github.com/withastro/astro/tree/HEAD/packages/integrations/cloudflare/issues/18035">#18035</a>)</li>
<li><a href="https://github.com/withastro/astro/commit/00393ff0819d615acea30341f2c850dbafacb826"><code>00393ff</code></a> Update dependency vitest [SECURITY] (<a href="https://github.com/withastro/astro/tree/HEAD/packages/integrations/cloudflare/issues/18026">#18026</a>)</li>
<li><a href="https://github.com/withastro/astro/commit/28d59a92f99f6b1acbafb98e6b1e2f22bb74c71f"><code>28d59a9</code></a> fix(cloudflare): restrict optimizeDeps glob to .js files to exclude .d.ts (<a href="https://github.com/withastro/astro/tree/HEAD/packages/integrations/cloudflare/issues/1">#1</a>...</li>
<li><a href="https://github.com/withastro/astro/commit/40378ccf3c4136d071043789e2e77cf454802ac7"><code>40378cc</code></a> [ci] format</li>
<li><a href="https://github.com/withastro/astro/commit/30cb32e82b68a09c776f5bd205b07db8e1c9285c"><code>30cb32e</code></a> fix(cloudflare): set default image transformation quality (<a href="https://github.com/withastro/astro/tree/HEAD/packages/integrations/cloudflare/issues/18059">#18059</a>)</li>
<li><a href="https://github.com/withastro/astro/commit/1e66b1484ccb7f394106c1dadbfb0cca7c0da543"><code>1e66b14</code></a> Update dependency svelte to v5.55.7 [SECURITY] (<a href="https://github.com/withastro/astro/tree/HEAD/packages/integrations/cloudflare/issues/18021">#18021</a>)</li>
<li><a href="https://github.com/withastro/astro/commit/24f63d38994331a323b5370090b6cf46e1742e39"><code>24f63d3</code></a> Update dependency hono to v4.13.5 [SECURITY] (<a href="https://github.com/withastro/astro/tree/HEAD/packages/integrations/cloudflare/issues/18020">#18020</a>)</li>
<li><a href="https://github.com/withastro/astro/commit/22458379f5f258ac1df225f5af644b98b1b8237b"><code>2245837</code></a> fix(astro): stop the head-metadata plugin invalidating its own virtual module...</li>
<li><a href="https://github.com/withastro/astro/commit/f7dbc6a2b736bb26ef286c3bbcf66d19bf6b215f"><code>f7dbc6a</code></a> fix(cloudflare): respect passthrough image service in compile mode (<a href="https://github.com/withastro/astro/tree/HEAD/packages/integrations/cloudflare/issues/18032">#18032</a>)</li>
<li><a href="https://github.com/withastro/astro/commit/8a3106e56abb46b0171688dd54d2570a308a70f6"><code>8a3106e</code></a> [ci] release (<a href="https://github.com/withastro/astro/tree/HEAD/packages/integrations/cloudflare/issues/17939">#17939</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/withastro/astro/commits/@astrojs/cloudflare@14.3.3/packages/integrations/cloudflare">compare view</a></li>
</ul>
</details>
<br />

Updates `@astrojs/markdown-remark` from 7.3.0 to 7.3.1
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/withastro/astro/releases">@astrojs/markdown-remark's releases</a>.</em></p>
<blockquote>
<h2><code>@astrojs/markdown-remark</code><a href="https://github.com/7"><code>@7</code></a>.3.1</h2>
<h3>Patch Changes</h3>
<ul>
<li><a href="https://redirect.github.com/withastro/astro/pull/17896">#17896</a> <a href="https://github.com/withastro/astro/commit/a548223607b9bb146d5d90ddda495343f9a2a739"><code>a548223</code></a> Thanks <a href="https://github.com/matthewp"><code>@matthewp</code></a>! - Fixes <code>&lt;script&gt;</code>/<code>&lt;style&gt;</code> rendering in MDX so that only literal content (including content injected by remark/rehype plugins) is treated as trusted markup. A dynamic value passed as a <code>&lt;script&gt;</code>/<code>&lt;style&gt;</code> child (e.g. <code>&lt;script&gt;{value}&lt;/script&gt;</code>) is now escaped like any other element's content instead of being rendered raw. Use <code>set:html</code> to explicitly opt a dynamic value back into raw rendering.</li>
</ul>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/withastro/astro/blob/main/packages/markdown/remark/CHANGELOG.md">@astrojs/markdown-remark's changelog</a>.</em></p>
<blockquote>
<h2>7.3.1</h2>
<h3>Patch Changes</h3>
<ul>
<li><a href="https://redirect.github.com/withastro/astro/pull/17896">#17896</a> <a href="https://github.com/withastro/astro/commit/a548223607b9bb146d5d90ddda495343f9a2a739"><code>a548223</code></a> Thanks <a href="https://github.com/matthewp"><code>@matthewp</code></a>! - Fixes <code>&lt;script&gt;</code>/<code>&lt;style&gt;</code> rendering in MDX so that only literal content (including content injected by remark/rehype plugins) is treated as trusted markup. A dynamic value passed as a <code>&lt;script&gt;</code>/<code>&lt;style&gt;</code> child (e.g. <code>&lt;script&gt;{value}&lt;/script&gt;</code>) is now escaped like any other element's content instead of being rendered raw. Use <code>set:html</code> to explicitly opt a dynamic value back into raw rendering.</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href="https://github.com/withastro/astro/commit/aa4949e425144e0d276d2ff70f01209e90fdfbe8"><code>aa4949e</code></a> [ci] release (<a href="https://github.com/withastro/astro/tree/HEAD/packages/markdown/remark/issues/17915">#17915</a>)</li>
<li><a href="https://github.com/withastro/astro/commit/a548223607b9bb146d5d90ddda495343f9a2a739"><code>a548223</code></a> Only treat literal script/style content as raw in MDX rendering (<a href="https://github.com/withastro/astro/tree/HEAD/packages/markdown/remark/issues/17896">#17896</a>)</li>
<li>See full diff in <a href="https://github.com/withastro/astro/commits/@astrojs/markdown-remark@7.3.1/packages/markdown/remark">compare view</a></li>
</ul>
</details>
<br />

Updates `@astrojs/mdx` from 8.0.0 to 8.0.2
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/withastro/astro/releases">@astrojs/mdx's releases</a>.</em></p>
<blockquote>
<h2><code>@astrojs/mdx</code><a href="https://github.com/8"><code>@8</code></a>.0.2</h2>
<h3>Patch Changes</h3>
<ul>
<li><a href="https://redirect.github.com/withastro/astro/pull/18036">#18036</a> <a href="https://github.com/withastro/astro/commit/f4444ebcc17e37680e159d1801b79fa357f16461"><code>f4444eb</code></a> Thanks <a href="https://github.com/apps/astro-factory"><code>@astro-factory</code></a>! - Fixes an incompatibility where <code>@astrojs/mdx</code> v8 could be installed with <code>astro</code> versions that bundle an older <code>@astrojs/markdown-satteri</code> lacking MDX support. Also improves the error message when the processor is too old to suggest updating <code>astro</code> itself.</li>
<li>Updated dependencies [<a href="https://github.com/withastro/astro/commit/3fd16eeb5cd096a6ceb8cc3e70b89ed30d6fcd4d"><code>3fd16ee</code></a>, <a href="https://github.com/withastro/astro/commit/8358d59cba754480c7d830c473837a0d7100ac7e"><code>8358d59</code></a>]:
<ul>
<li><code>@astrojs/markdown-satteri</code><a href="https://github.com/0"><code>@0</code></a>.4.2</li>
</ul>
</li>
</ul>
<h2><code>@astrojs/mdx</code><a href="https://github.com/8"><code>@8</code></a>.0.1</h2>
<h3>Patch Changes</h3>
<ul>
<li>Updated dependencies [<a href="https://github.com/withastro/astro/commit/a548223607b9bb146d5d90ddda495343f9a2a739"><code>a548223</code></a>]:
<ul>
<li><code>@astrojs/markdown-satteri</code><a href="https://github.com/0"><code>@0</code></a>.4.1</li>
</ul>
</li>
</ul>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/withastro/astro/blob/main/packages/integrations/mdx/CHANGELOG.md">@astrojs/mdx's changelog</a>.</em></p>
<blockquote>
<h2>8.0.2</h2>
<h3>Patch Changes</h3>
<ul>
<li><a href="https://redirect.github.com/withastro/astro/pull/18036">#18036</a> <a href="https://github.com/withastro/astro/commit/f4444ebcc17e37680e159d1801b79fa357f16461"><code>f4444eb</code></a> Thanks <a href="https://github.com/apps/astro-factory"><code>@astro-factory</code></a>! - Fixes an incompatibility where <code>@astrojs/mdx</code> v8 could be installed with <code>astro</code> versions that bundle an older <code>@astrojs/markdown-satteri</code> lacking MDX support. Also improves the error message when the processor is too old to suggest updating <code>astro</code> itself.</li>
<li>Updated dependencies [<a href="https://github.com/withastro/astro/commit/3fd16eeb5cd096a6ceb8cc3e70b89ed30d6fcd4d"><code>3fd16ee</code></a>, <a href="https://github.com/withastro/astro/commit/8358d59cba754480c7d830c473837a0d7100ac7e"><code>8358d59</code></a>]:
<ul>
<li><code>@astrojs/markdown-satteri</code><a href="https://github.com/0"><code>@0</code></a>.4.2</li>
</ul>
</li>
</ul>
<h2>8.0.1</h2>
<h3>Patch Changes</h3>
<ul>
<li>Updated dependencies [<a href="https://github.com/withastro/astro/commit/a548223607b9bb146d5d90ddda495343f9a2a739"><code>a548223</code></a>]:
<ul>
<li><code>@astrojs/markdown-satteri</code><a href="https://github.com/0"><code>@0</code></a>.4.1</li>
</ul>
</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href="https://github.com/withastro/astro/commit/790c6f720efd9de362e7a2b6319ac2d721062bda"><code>790c6f7</code></a> [ci] release (<a href="https://github.com/withastro/astro/tree/HEAD/packages/integrations/mdx/issues/18035">#18035</a>)</li>
<li><a href="https://github.com/withastro/astro/commit/f4444ebcc17e37680e159d1801b79fa357f16461"><code>f4444eb</code></a> Tighten <code>@astrojs/mdx</code> peer dependency on astro and improve version mismatch er...</li>
<li><a href="https://github.com/withastro/astro/commit/aa4949e425144e0d276d2ff70f01209e90fdfbe8"><code>aa4949e</code></a> [ci] release (<a href="https://github.com/withastro/astro/tree/HEAD/packages/integrations/mdx/issues/17915">#17915</a>)</li>
<li><a href="https://github.com/withastro/astro/commit/a548223607b9bb146d5d90ddda495343f9a2a739"><code>a548223</code></a> Only treat literal script/style content as raw in MDX rendering (<a href="https://github.com/withastro/astro/tree/HEAD/packages/integrations/mdx/issues/17896">#17896</a>)</li>
<li>See full diff in <a href="https://github.com/withastro/astro/commits/@astrojs/mdx@8.0.2/packages/integrations/mdx">compare view</a></li>
</ul>
</details>
<br />

Updates `astro` from 7.3.1 to 7.3.5
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/withastro/astro/releases">astro's releases</a>.</em></p>
<blockquote>
<h2>astro@7.3.5</h2>
<h3>Patch Changes</h3>
<ul>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/17736">#17736</a> <a href="https://github.com/withastro/astro/commit/2b8b2e80169da0ab19055166438291c46fcfe320"><code>2b8b2e8</code></a> Thanks <a href="https://github.com/ematipico"><code>@ematipico</code></a>! - Adds a new container function called <code>renderComponent()</code>, which renders Astro components with inlined styles and scripts.</p>
<p>Users must import the component with the new <code>?container</code> query string:</p>
<pre lang="js"><code>import { experimental_AstroContainer } from &quot;astro/container&quot;;
import TodoList from &quot;../components/TodoList.astro?container&quot;;
<p>const container = await experimental_AstroContainer.create();</p>
<p>const _string = container.renderComponent(TodoList);
</code></pre></p>
</li>
</ul>
<h2>astro@7.3.4</h2>
<h3>Patch Changes</h3>
<ul>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/18063">#18063</a> <a href="https://github.com/withastro/astro/commit/40896acb744988d9d3c2015e810c57de26390b3f"><code>40896ac</code></a> Thanks <a href="https://github.com/adamchal"><code>@adamchal</code></a>! - Fixes incremental builds repeatedly rendering unchanged pages when modules or compiled CSS reference bundled assets.</p>
</li>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/18053">#18053</a> <a href="https://github.com/withastro/astro/commit/cf5d72f286c3c1185b7d39692b8ca8e789c16e02"><code>cf5d72f</code></a> Thanks <a href="https://github.com/Princesseuh"><code>@Princesseuh</code></a>! - Improves the <code>astro check</code> error shown for TypeScript 7. The command now explains that TypeScript 7 is not currently supported and provides instructions for experimentally type-checking Astro files with TypeScript 7.1 and <code>@astrojs/ts-content-mapper</code>.</p>
</li>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/18086">#18086</a> <a href="https://github.com/withastro/astro/commit/795a7e44640e7ad513a590a362dc0d3259de7771"><code>795a7e4</code></a> Thanks <a href="https://github.com/ump45nose"><code>@ump45nose</code></a>! - Fix double-escaped ampersands in Markdown image <code>alt</code> and <code>title</code> attributes. The <code>__ASTRO_IMAGE_</code> round-trip now decodes the numeric (<code>&amp;#x26;</code>) and named (<code>&amp;amp;</code>) character references the Markdown processors emit, so an <code>&amp;</code> in an alt or title is escaped exactly once in the final HTML instead of twice.</p>
</li>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/18074">#18074</a> <a href="https://github.com/withastro/astro/commit/042980585a75a12f3b0d63377483af98ef80e0f9"><code>0429805</code></a> Thanks <a href="https://github.com/SurefireStudios"><code>@SurefireStudios</code></a>! - Fix three error names that did not match their documented reference. <code>MissingLocale</code>, <code>MissingIndexForInternationalization</code> and <code>NoManifestAvailable</code> reported names ending in <code>Error</code> in the dev overlay, while their error reference pages are published under the unsuffixed names, so the name shown to users could not be found in the docs.</p>
</li>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/18007">#18007</a> <a href="https://github.com/withastro/astro/commit/22458379f5f258ac1df225f5af644b98b1b8237b"><code>2245837</code></a> Thanks <a href="https://github.com/L4XB"><code>@L4XB</code></a>! - Fixes the dev server re-evaluating the whole server module graph on every request. The <code>astro:head-metadata</code> plugin invalidated its component metadata virtual module from its own <code>transform</code> hook, so each evaluation of that module scheduled the next one. Adapters that run requests outside Vite's module runner, such as <code>@astrojs/cloudflare</code>, paid for a full re-evaluation of the server graph on every request for the lifetime of the process.</p>
</li>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/18096">#18096</a> <a href="https://github.com/withastro/astro/commit/43657c4612f04cecf6e34d288eed1811c6508b74"><code>43657c4</code></a> Thanks <a href="https://github.com/matthewp"><code>@matthewp</code></a>! - Fixes domain-based i18n routing to respect <code>security.allowedDomains</code> when selecting a locale from request host headers</p>
</li>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/18043">#18043</a> <a href="https://github.com/withastro/astro/commit/8a53a8b70f964e7bc127d6991cc9aca21e87750f"><code>8a53a8b</code></a> Thanks <a href="https://github.com/apps/astro-factory"><code>@astro-factory</code></a>! - Fixes <code>image.responsiveStyles</code> emitting invalid <code>object-position</code> CSS values for same-axis keyword pairs (<code>top bottom</code>, <code>left right</code>, etc.)</p>
</li>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/18029">#18029</a> <a href="https://github.com/withastro/astro/commit/c08252d6803d4af2890b4bd1c69e4b4fc49e2d04"><code>c08252d</code></a> Thanks <a href="https://github.com/matthewp"><code>@matthewp</code></a>! - Runs <code>astro dev</code> and <code>astro preview</code> in the foreground when an AI agent is detected on Windows, allowing the agent to manage the process lifetime. Pass <code>--background</code> explicitly to request an Astro-managed background process. Agent-inferred backgrounding remains enabled on other platforms.</p>
</li>
<li>
<p>Updated dependencies [<a href="https://github.com/withastro/astro/commit/3fd16eeb5cd096a6ceb8cc3e70b89ed30d6fcd4d"><code>3fd16ee</code></a>, <a href="https://github.com/withastro/astro/commit/8358d59cba754480c7d830c473837a0d7100ac7e"><code>8358d59</code></a>]:</p>
<ul>
<li><code>@astrojs/markdown-satteri</code><a href="https://github.com/0"><code>@0</code></a>.4.2</li>
</ul>
</li>
</ul>
<h2>astro@7.3.3</h2>
<h3>Patch Changes</h3>
<ul>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/17651">#17651</a> <a href="https://github.com/withastro/astro/commit/504333c2a0c7da3ca06e39ce37eee832192ba8ea"><code>504333c</code></a> Thanks <a href="https://github.com/sxzz"><code>@sxzz</code></a>! - Refactors internal version handling to use a smaller, ESM-native dependency</p>
</li>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/17942">#17942</a> <a href="https://github.com/withastro/astro/commit/0bc5715a2990a84598a064ac8de52c08fffd1186"><code>0bc5715</code></a> Thanks <a href="https://github.com/matthewp"><code>@matthewp</code></a>! - Returns appropriate 400 and 404 responses from the image endpoint for invalid and missing local image paths</p>
</li>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/17700">#17700</a> <a href="https://github.com/withastro/astro/commit/b2222fc3cdbeb1b75029a109d13d19515e5260ae"><code>b2222fc</code></a> Thanks <a href="https://github.com/winklemad"><code>@winklemad</code></a>! - Fixes <code>Astro.preferredLocaleList</code> returning an empty list when a locale is configured with the object form (<code>{ path, codes }</code>) and the browser sends the code with different casing or an underscore, such as <code>en-US</code> matching a configured <code>en-us</code></p>
</li>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/17941">#17941</a> <a href="https://github.com/withastro/astro/commit/394ff79954e5822e3884947a07d84fef0c72f31c"><code>394ff79</code></a> Thanks <a href="https://github.com/matthewp"><code>@matthewp</code></a>! - Fixes <code>astro preview --ignore-lock</code> (and <code>astro dev --ignore-lock</code>) being refused when run from an AI agent environment. The flag now starts the server in the foreground instead of erroring, since agent detection only inferred background mode and was never explicitly requested. An explicit <code>--background</code> combined with <code>--ignore-lock</code> still errors.</p>
</li>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/17928">#17928</a> <a href="https://github.com/withastro/astro/commit/327792719475cf5b0023dd8983cfd0dc58070888"><code>3277927</code></a> Thanks <a href="https://github.com/ArmandPhilippot"><code>@ArmandPhilippot</code></a>! - Fixes TypeScript autocompletion for <code>getImage()</code> to suggest all available predefined options.</p>
</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/withastro/astro/blob/main/packages/astro/CHANGELOG.md">astro's changelog</a>.</em></p>
<blockquote>
<h2>7.3.5</h2>
<h3>Patch Changes</h3>
<ul>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/17736">#17736</a> <a href="https://github.com/withastro/astro/commit/2b8b2e80169da0ab19055166438291c46fcfe320"><code>2b8b2e8</code></a> Thanks <a href="https://github.com/ematipico"><code>@ematipico</code></a>! - Adds a new container function called <code>renderComponent()</code>, which renders Astro components with inlined styles and scripts.</p>
<p>Users must import the component with the new <code>?container</code> query string:</p>
<pre lang="js"><code>import { experimental_AstroContainer } from &quot;astro/container&quot;;
import TodoList from &quot;../components/TodoList.astro?container&quot;;
<p>const container = await experimental_AstroContainer.create();</p>
<p>const _string = container.renderComponent(TodoList);
</code></pre></p>
</li>
</ul>
<h2>7.3.4</h2>
<h3>Patch Changes</h3>
<ul>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/18063">#18063</a> <a href="https://github.com/withastro/astro/commit/40896acb744988d9d3c2015e810c57de26390b3f"><code>40896ac</code></a> Thanks <a href="https://github.com/adamchal"><code>@adamchal</code></a>! - Fixes incremental builds repeatedly rendering unchanged pages when modules or compiled CSS reference bundled assets.</p>
</li>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/18053">#18053</a> <a href="https://github.com/withastro/astro/commit/cf5d72f286c3c1185b7d39692b8ca8e789c16e02"><code>cf5d72f</code></a> Thanks <a href="https://github.com/Princesseuh"><code>@Princesseuh</code></a>! - Improves the <code>astro check</code> error shown for TypeScript 7. The command now explains that TypeScript 7 is not currently supported and provides instructions for experimentally type-checking Astro files with TypeScript 7.1 and <code>@astrojs/ts-content-mapper</code>.</p>
</li>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/18086">#18086</a> <a href="https://github.com/withastro/astro/commit/795a7e44640e7ad513a590a362dc0d3259de7771"><code>795a7e4</code></a> Thanks <a href="https://github.com/ump45nose"><code>@ump45nose</code></a>! - Fix double-escaped ampersands in Markdown image <code>alt</code> and <code>title</code> attributes. The <code>__ASTRO_IMAGE_</code> round-trip now decodes the numeric (<code>&amp;#x26;</code>) and named (<code>&amp;amp;</code>) character references the Markdown processors emit, so an <code>&amp;</code> in an alt or title is escaped exactly once in the final HTML instead of twice.</p>
</li>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/18074">#18074</a> <a href="https://github.com/withastro/astro/commit/042980585a75a12f3b0d63377483af98ef80e0f9"><code>0429805</code></a> Thanks <a href="https://github.com/SurefireStudios"><code>@SurefireStudios</code></a>! - Fix three error names that did not match their documented reference. <code>MissingLocale</code>, <code>MissingIndexForInternationalization</code> and <code>NoManifestAvailable</code> reported names ending in <code>Error</code> in the dev overlay, while their error reference pages are published under the unsuffixed names, so the name shown to users could not be found in the docs.</p>
</li>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/18007">#18007</a> <a href="https://github.com/withastro/astro/commit/22458379f5f258ac1df225f5af644b98b1b8237b"><code>2245837</code></a> Thanks <a href="https://github.com/L4XB"><code>@L4XB</code></a>! - Fixes the dev server re-evaluating the whole server module graph on every request. The <code>astro:head-metadata</code> plugin invalidated its component metadata virtual module from its own <code>transform</code> hook, so each evaluation of that module scheduled the next one. Adapters that run requests outside Vite's module runner, such as <code>@astrojs/cloudflare</code>, paid for a full re-evaluation of the server graph on every request for the lifetime of the process.</p>
</li>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/18096">#18096</a> <a href="https://github.com/withastro/astro/commit/43657c4612f04cecf6e34d288eed1811c6508b74"><code>43657c4</code></a> Thanks <a href="https://github.com/matthewp"><code>@matthewp</code></a>! - Fixes domain-based i18n routing to respect <code>security.allowedDomains</code> when selecting a locale from request host headers</p>
</li>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/18043">#18043</a> <a href="https://github.com/withastro/astro/commit/8a53a8b70f964e7bc127d6991cc9aca21e87750f"><code>8a53a8b</code></a> Thanks <a href="https://github.com/apps/astro-factory"><code>@astro-factory</code></a>! - Fixes <code>image.responsiveStyles</code> emitting invalid <code>object-position</code> CSS values for same-axis keyword pairs (<code>top bottom</code>, <code>left right</code>, etc.)</p>
</li>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/18029">#18029</a> <a href="https://github.com/withastro/astro/commit/c08252d6803d4af2890b4bd1c69e4b4fc49e2d04"><code>c08252d</code></a> Thanks <a href="https://github.com/matthewp"><code>@matthewp</code></a>! - Runs <code>astro dev</code> and <code>astro preview</code> in the foreground when an AI agent is detected on Windows, allowing the agent to manage the process lifetime. Pass <code>--background</code> explicitly to request an Astro-managed background process. Agent-inferred backgrounding remains enabled on other platforms.</p>
</li>
<li>
<p>Updated dependencies [<a href="https://github.com/withastro/astro/commit/3fd16eeb5cd096a6ceb8cc3e70b89ed30d6fcd4d"><code>3fd16ee</code></a>, <a href="https://github.com/withastro/astro/commit/8358d59cba754480c7d830c473837a0d7100ac7e"><code>8358d59</code></a>]:</p>
<ul>
<li><code>@astrojs/markdown-satteri</code><a href="https://github.com/0"><code>@0</code></a>.4.2</li>
</ul>
</li>
</ul>
<h2>7.3.3</h2>
<h3>Patch Changes</h3>
<ul>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/17651">#17651</a> <a href="https://github.com/withastro/astro/commit/504333c2a0c7da3ca06e39ce37eee832192ba8ea"><code>504333c</code></a> Thanks <a href="https://github.com/sxzz"><code>@sxzz</code></a>! - Refactors internal version handling to use a smaller, ESM-native dependency</p>
</li>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/17942">#17942</a> <a href="https://github.com/withastro/astro/commit/0bc5715a2990a84598a064ac8de52c08fffd1186"><code>0bc5715</code></a> Thanks <a href="https://github.com/matthewp"><code>@matthewp</code></a>! - Returns appropriate 400 and 404 responses from the image endpoint for invalid and missing local image paths</p>
</li>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/17700">#17700</a> <a href="https://github.com/withastro/astro/commit/b2222fc3cdbeb1b75029a109d13d19515e5260ae"><code>b2222fc</code></a> Thanks <a href="https://github.com/winklemad"><code>@winklemad</code></a>! - Fixes <code>Astro.preferredLocaleList</code> returning an empty list when a locale is configured with the object form (<code>{ path, codes }</code>) and the browser sends the code with different casing or an underscore, such as <code>en-US</code> matching a configured <code>en-us</code></p>
</li>
<li>
<p><a href="https://redirect.github.com/withastro/astro/pull/17941">#17941</a> <a href="https://github.com/withastro/astro/commit/394ff79954e5822e3884947a07d84fef0c72f31c"><code>394ff79</code></a> Thanks <a href="https://github.com/matthewp"><code>@matthewp</code></a>! - Fixes <code>astro preview --ignore-lock</code> (and <code>astro dev --ignore-lock</code>) being refused when run from an AI agent environment. The flag now starts the server in the foreground instead of erroring, since agent detection only inferred background mode and was never explicitly requested. An explicit <code>--background</code> combined with <code>--ignore-lock</code> still errors.</p>
</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href="https://github.com/withastro/astro/commit/c2e01642af5f3919e4951b277a01d2de0ba1322f"><code>c2e0164</code></a> [ci] release (<a href="https://github.com/withastro/astro/tree/HEAD/packages/astro/issues/18113">#18113</a>)</li>
<li><a href="https://github.com/withastro/astro/commit/2b8b2e80169da0ab19055166438291c46fcfe320"><code>2b8b2e8</code></a> feat: add render component (<a href="https://github.com/withastro/astro/tree/HEAD/packages/astro/issues/17736">#17736</a>)</li>
<li><a href="https://github.com/withastro/astro/commit/790c6f720efd9de362e7a2b6319ac2d721062bda"><code>790c6f7</code></a> [ci] release (<a href="https://github.com/withastro/astro/tree/HEAD/packages/astro/issues/18035">#18035</a>)</li>
<li><a href="https://github.com/withastro/astro/commit/9d17bf1af7eb5d6c753e590dcb36b882647f859a"><code>9d17bf1</code></a> Update dependency obug to v3 (<a href="https://github.com/withastro/astro/tree/HEAD/packages/astro/issues/18100">#18100</a>)</li>
<li><a href="https://github.com/withastro/astro/commit/43657c4612f04cecf6e34d288eed1811c6508b74"><code>43657c4</code></a> Fix i18n domain host validation (<a href="https://github.com/withastro/astro/tree/HEAD/packages/astro/issues/18096">#18096</a>)</li>
<li><a href="https://github.com/withastro/astro/commit/00393ff0819d615acea30341f2c850dbafacb826"><code>00393ff</code></a> Update dependency vitest [SECURITY] (<a href="https://github.com/withastro/astro/tree/HEAD/packages/astro/issues/18026">#18026</a>)</li>
<li><a href="https://github.com/withastro/astro/commit/40896acb744988d9d3c2015e810c57de26390b3f"><code>40896ac</code></a> fix(incremental): resolve asset placeholders in modules or compiled CSS (<a href="https://github.com/withastro/astro/tree/HEAD/packages/astro/issues/18063">#18063</a>)</li>
<li><a href="https://github.com/withastro/astro/commit/042980585a75a12f3b0d63377483af98ef80e0f9"><code>0429805</code></a> fix(errors): align three error names with their documented reference (<a href="https://github.com/withastro/astro/tree/HEAD/packages/astro/issues/18074">#18074</a>)</li>
<li><a href="https://github.com/withastro/astro/commit/3eab954d213e3dd040db7925b56e7ab5a02f4532"><code>3eab954</code></a> [ci] format</li>
<li><a href="https://github.com/withastro/astro/commit/795a7e44640e7ad513a590a362dc0d3259de7771"><code>795a7e4</code></a> Fix double-escaped ampersands in Markdown image alt and title attributes (<a href="https://github.com/withastro/astro/tree/HEAD/packages/astro/issues/18">#18</a>...</li>
<li>Additional commits viewable in <a href="https://github.com/withastro/astro/commits/astro@7.3.5/packages/astro">compare view</a></li>
</ul>
</details>
<br />

Updates `lucide-react` from 1.38.0 to 1.48.0
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/lucide-icons/lucide/releases">lucide-react's releases</a>.</em></p>
<blockquote>
<h2>Version 1.48.0</h2>
<h2>What's Changed</h2>
<ul>
<li>feat(icons): added <code>briefcase-plus</code> icon by <a href="https://github.com/tylerkade"><code>@tylerkade</code></a> in <a href="https://redirect.github.com/lucide-icons/lucide/pull/4757">lucide-icons/lucide#4757</a></li>
<li>feat(icons): added <code>square-sparkles</code> icon by <a href="https://github.com/nananecy"><code>@nananecy</code></a> in <a href="https://redirect.github.com/lucide-icons/lucide/pull/3610">lucide-icons/lucide#3610</a></li>
<li>feat(icons): added <code>line-dot-left-horizontal</code> icon by <a href="https://github.com/nathan-de-pachtere"><code>@nathan-de-pachtere</code></a> in <a href="https://redirect.github.com/lucide-icons/lucide/pull/3855">lucide-icons/lucide#3855</a></li>
<li>fix(packages/svelte,solid): fix shared type imports in Solid and Svelte by <a href="https://github.com/karsa-mistmere"><code>@karsa-mistmere</code></a> in <a href="https://redirect.github.com/lucide-icons/lucide/pull/4846">lucide-icons/lucide#4846</a></li>
<li>chore(deps-dev): bump react-native from 0.76.9 to 0.87.1 in the react-native-deps group across 1 directory by <a href="https://github.com/dependabot"><code>@dependabot</code></a>[bot] in <a href="https://redirect.github.com/lucide-icons/lucide/pull/4673">lucide-icons/lucide#4673</a></li>
<li>feat(packages): export __iconNode data across framework packages by <a href="https://github.com/lx3133584"><code>@lx3133584</code></a> in <a href="https://redirect.github.com/lucide-icons/lucide/pull/4761">lucide-icons/lucide#4761</a></li>
<li>fix(icons): Tweak <code>card-sim</code> chip by <a href="https://github.com/danielbayley"><code>@danielbayley</code></a> in <a href="https://redirect.github.com/lucide-icons/lucide/pull/3649">lucide-icons/lucide#3649</a></li>
<li>feat(icons): added <code>line-dot-top-vertical</code> icon by <a href="https://github.com/nathan-de-pachtere"><code>@nathan-de-pachtere</code></a> in <a href="https://redirect.github.com/lucide-icons/lucide/pull/3856">lucide-icons/lucide#3856</a></li>
<li>feat(icons): added <code>line-dot-bottom-vertical</code> icon by <a href="https://github.com/nathan-de-pachtere"><code>@nathan-de-pachtere</code></a> in <a href="https://redirect.github.com/lucide-icons/lucide/pull/3857">lucide-icons/lucide#3857</a></li>
<li>fix(packages/react-native): pass testID to the rendered Svg element by <a href="https://github.com/OlegBezr"><code>@OlegBezr</code></a> in <a href="https://redirect.github.com/lucide-icons/lucide/pull/4881">lucide-icons/lucide#4881</a></li>
<li>chore(<code>@lucide/vue</code>): Fix types <code>@lucide/vue</code> package and added workflow for it. by <a href="https://github.com/ericfennis"><code>@ericfennis</code></a> in <a href="https://redirect.github.com/lucide-icons/lucide/pull/4883">lucide-icons/lucide#4883</a></li>
<li>test(packages/shared): cover buildLucideIconForReact by <a href="https://github.com/vugarbbakhishov-hub"><code>@vugarbbakhishov-hub</code></a> in <a href="https://redirect.github.com/lucide-icons/lucide/pull/4872">lucide-icons/lucide#4872</a></li>
<li>feat(site): Better icon detail page and add unreleased flag by <a href="https://github.com/ericfennis"><code>@ericfennis</code></a> in <a href="https://redirect.github.com/lucide-icons/lucide/pull/4877">lucide-icons/lucide#4877</a></li>
<li>fix(icons): changed <code>map-pinned</code> icon by <a href="https://github.com/jguddas"><code>@jguddas</code></a> in <a href="https://redirect.github.com/lucide-icons/lucide/pull/4880">lucide-icons/lucide#4880</a></li>
<li>fix(icons): changed <code>mail-pen</code> by <a href="https://github.com/karsa-mistmere"><code>@karsa-mistmere</code></a> in <a href="https://redirect.github.com/lucide-icons/lucide/pull/4899">lucide-icons/lucide#4899</a></li>
<li>chore(deps-dev): bump the angular-deps group across 1 directory with 14 updates by <a href="https://github.com/dependabot"><code>@dependabot</code></a>[bot] in <a href="https://redirect.github.com/lucide-icons/lucide/pull/4895">lucide-icons/lucide#4895</a></li>
<li>chore(deps): bump the vue-deps group with 3 updates by <a href="https://github.com/dependabot"><code>@dependabot</code></a>[bot] in <a href="https://redirect.github.com/lucide-icons/lucide/pull/4893">lucide-icons/lucide#4893</a></li>
<li>chore(typchecking): More typecheck jobs for all packages by <a href="https://github.com/ericfennis"><code>@ericfennis</code></a> in <a href="https://redirect.github.com/lucide-icons/lucide/pull/4885">lucide-icons/lucide#4885</a></li>
<li>feat(icons): add house-cog icon by <a href="https://github.com/ajaxjiang96"><code>@ajaxjiang96</code></a> in <a href="https://redirect.github.com/lucide-icons/lucide/pull/4904">lucide-icons/lucide#4904</a></li>
</ul>
<h2>New Contributors</h2>
<ul>
<li><a href="https://github.com/nananecy"><code>@nananecy</code></a> made their first contribution in <a href="https://redirect.github.com/lucide-icons/lucide/pull/3610">lucide-icons/lucide#3610</a></li>
<li><a href="https://github.com/OlegBezr"><code>@OlegBezr</code></a> made their first contribution in <a href="https://redirect.github.com/lucide-icons/lucide/pull/4881">lucide-icons/lucide#4881</a></li>
<li><a href="https://github.com/vugarbbakhishov-hub"><code>@vugarbbakhishov-hub</code></a> made their first contribution in <a href="https://redirect.github.com/lucide-icons/lucide/pull/4872">lucide-icons/lucide#4872</a></li>
<li><a href="https://github.com/ajaxjiang96"><code>@ajaxjiang96</code></a> made their first contribution in <a href="https://redirect.github.com/lucide-icons/lucide/pull/4904">lucide-icons/lucide#4904</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/lucide-icons/lucide/compare/1.47.0...1.48.0">https://github.com/lucide-icons/lucide/compare/1.47.0...1.48.0</a></p>
<h2>Version 1.47.0</h2>
<h2>What's Changed</h2>
<ul>
<li>feat(icons): add lambda icon by <a href="https://github.com/UbaidUllah9962"><code>@UbaidUllah9962</code></a> in <a href="https://redirect.github.com/lucide-icons/lucide/pull/4017">lucide-icons/lucide#4017</a></li>
<li>feat(icons): delegated <code>faucet</code> icon from lab by <a href="https://github.com/karsa-mistmere"><code>@karsa-mistmere</code></a> in <a href="https://redirect.github.com/lucide-icons/lucide/pull/4764">lucide-icons/lucide#4764</a></li>
<li>feat(icons): added <code>door-closed-package</code> icon by <a href="https://github.com/karsa-mistmere"><code>@karsa-mistmere</code></a> in <a href="https://redirect.github.com/lucide-icons/lucide/pull/4814">lucide-icons/lucide#4814</a></li>
<li>feat(icons): added 'nepali-rupee' icon by <a href="https://github.com/sarajdhakal"><code>@sarajdhakal</code></a> in <a href="https://redirect.github.com/lucide-icons/lucide/pull/4608">lucide-icons/lucide#4608</a></li>
<li>feat(icons): added <code>tube-lotion</code> icon by <a href="https://github.com/AlecRust"><code>@AlecRust</code></a> in <a href="https://redirect.github.com/lucide-icons/lucide/pull/4029">lucide-icons/lucide#4029</a></li>
<li>feat(icons): Added cupcake icon by <a href="https://github.com/briz123"><code>@briz123</code></a> in <a href="https://redirect.github.com/lucide-icons/lucide/pull/3000">lucide-icons/lucide#3000</a></li>
<li>feat(icons): added square-dashed-x icon by <a href="https://github.com/EthanHazel"><code>@EthanHazel</code></a> in <a href="https://redirect.github.com/lucide-icons/lucide/pull/4535">lucide-icons/lucide#4535</a></li>
<li>feat(icons): add <code>rotate-cw-clock</code> icon by <a href="https://github.com/gkkconan"><code>@gkkconan</code></a> in <a href="https://redirect.github.com/lucide-icons/lucide/pull/3979">lucide-icons/lucide#3979</a></li>
<li>fix(icons): remove path from save-off by <a href="https://github.com/HPRILLER"><code>@HPRILLER</code></a> in <a href="https://redirect.github.com/lucide-icons/lucide/pull/4848">lucide-icons/lucide#4848</a></li>
<li>fix(icons): changed <code>calendar-chevrons-right</code> by <a href="https://github.com/karsa-mistmere"><code>@karsa-mistmere</code></a> in <a href="https://redirect.github.com/lucide-icons/lucide/pull/4865">lucide-icons/lucide#4865</a></li>
<li>fix(icons): changed <code>broccoli</code> icon by <a href="https://github.com/jguddas"><code>@jguddas</code></a> in <a href="https://redirect.github.com/lucide-icons/lucide/pull/4871">lucide-icons/lucide#4871</a></li>
<li>feat(icons): added square-dashed-plus by <a href="https://github.com/psjdev"><code>@psjdev</code></a> in <a href="https://redirect.github.com/lucide-icons/lucide/pull/4849">lucide-icons/lucide#4849</a></li>
</ul>
<h2>New Contributors</h2>
<ul>
<li><a href="https://github.com/UbaidUllah9962"><code>@UbaidUllah9962</code></a> made their first contribution in <a href="https://redirect.github.com/lucide-icons/lucide/pull/4017">lucide-icons/lucide#4017</a></li>
<li><a href="https://github.com/sarajdhakal"><code>@sarajdhakal</code></a> made their first contribution in <a href="https://redirect.github.com/lucide-icons/lucide/pull/4608">lucide-icons/lucide#4608</a></li>
<li><a href="https://github.com/AlecRust"><code>@AlecRust</code></a> made their first contribution in <a href="https://redirect.github.com/lucide-icons/lucide/pull/4029">lucide-icons/lucide#4029</a></li>
<li><a href="https://github.com/gkkconan"><code>@gkkconan</code></a> made their first contribution in <a href="https://redirect.github.com/lucide-icons/lucide/pull/3979">lucide-icons/lucide#3979</a></li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href="https://github.com/lucide-icons/lucide/commit/f06ac67e33d645c40b8ce19a0419c85c5d7dd751"><code>f06ac67</code></a> chore(typchecking): More typecheck jobs for all packages (<a href="https://github.com/lucide-icons/lucide/tree/HEAD/packages/lucide-react/issues/4885">#4885</a>)</li>
<li><a href="https://github.com/lucide-icons/lucide/commit/94e4cb9d9db5907053ebf3636a97c45529cf776b"><code>94e4cb9</code></a> chore(dependencies): Update dependencies (<a href="https://github.com/lucide-icons/lucide/tree/HEAD/packages/lucide-react/issues/4806">#4806</a>)</li>
<li><a href="https://github.com/lucide-icons/lucide/commit/99d25bdee231922e73e19525f57a585d1682fab2"><code>99d25bd</code></a> feat(packages): extract icon build logic into <code>@lucide/shared</code> (<a href="https://github.com/lucide-icons/lucide/tree/HEAD/packages/lucide-react/issues/4409">#4409</a>)</li>
<li>See full diff in <a href="https://github.com/lucide-icons/lucide/commits/1.48.0/packages/lucide-react">compare view</a></li>
</ul>
</details>
<br />

Updates `react` from 19.2.8 to 19.3.0
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/react/react/releases">react's releases</a>.</em></p>
<blockquote>
<h2>19.3.0 (September 9, 2026)</h2>
<p>Below is a list of all new features, APIs, and bug fixes.</p>
<p>Read the <a href="https://react.dev/blog/2026/09/09/react-19-3">React 19.3 release post</a> for more information.</p>
<h2>New React Features</h2>
<ul>
<li><code>&lt;ViewTransition /&gt;</code>: Adds <code>&lt;ViewTransition /&gt;</code> and <code>addTransitionType</code> APIs to power View Transition animations in React (<a href="https://github.com/sebmarkbage"><code>@sebmarkbage</code></a>, <a href="https://github.com/jackpope"><code>@jackpope</code></a>, <a href="https://github.com/gaearon"><code>@gaearon</code></a>: <a href="https://redirect.github.com/facebook/react/pull/31975">#31975</a>, <a href="https://redirect.github.com/facebook/react/pull/31987">#31987</a>, <a href="https://redirect.github.com/facebook/react/pull/31996">#31996</a>, <a href="https://redirect.github.com/facebook/react/pull/31999">#31999</a>, <a href="https://redirect.github.com/facebook/react/pull/32001">#32001</a>, <a href="https://redirect.github.com/facebook/react/pull/32002">#32002</a>, <a href="https://redirect.github.com/facebook/react/pull/32028">#32028</a>, <a href="https://redirect.github.com/facebook/react/pull/32029">#32029</a>, <a href="https://redirect.github.com/facebook/react/pull/32031">#32031</a>, <a href="https://redirect.github.com/facebook/react/pull/32034">#32034</a>, <a href="https://redirect.github.com/facebook/react/pull/32038">#32038</a>, <a href="https://redirect.github.com/facebook/react/pull/32041">#32041</a>, <a href="https://redirect.github.com/facebook/react/pull/32050">#32050</a>, <a href="https://redirect.github.com/facebook/react/pull/32090">#32090</a>, <a href="https://redirect.github.com/facebook/react/pull/32105">#32105</a>, <a href="https://redirect.github.com/facebook/react/pull/32254">#32254</a>, <a href="https://redirect.github.com/facebook/react/pull/32379">#32379</a>, <a href="https://redirect.github.com/facebook/react/pull/32422">#32422</a>, <a href="https://redirect.github.com/facebook/react/pull/32462">#32462</a>, <a href="https://redirect.github.com/facebook/react/pull/32540">#32540</a>, <a href="https://redirect.github.com/facebook/react/pull/32545">#32545</a>, <a href="https://redirect.github.com/facebook/react/pull/32585">#32585</a>, <a href="https://redirect.github.com/facebook/react/pull/32599">#32599</a>, <a href="https://redirect.github.com/facebook/react/pull/32611">#32611</a>, <a href="https://redirect.github.com/facebook/react/pull/32612">#32612</a>, <a href="https://redirect.github.com/facebook/react/pull/32617">#32617</a>, <a href="https://redirect.github.com/facebook/react/pull/32651">#32651</a>, <a href="https://redirect.github.com/facebook/react/pull/32653">#32653</a>, <a href="https://redirect.github.com/facebook/react/pull/32656">#32656</a>, <a href="https://redirect.github.com/facebook/react/pull/32664">#32664</a>, <a href="https://redirect.github.com/facebook/react/pull/32699">#32699</a>, <a href="https://redirect.github.com/facebook/react/pull/32723">#32723</a>, <a href="https://redirect.github.com/facebook/react/pull/32734">#32734</a>, <a href="https://redirect.github.com/facebook/react/pull/32751">#32751</a>, <a href="https://redirect.github.com/facebook/react/pull/32752">#32752</a>, <a href="https://redirect.github.com/facebook/react/pull/32760">#32760</a>, <a href="https://redirect.github.com/facebook/react/pull/32761">#32761</a>, <a href="https://redirect.github.com/facebook/react/pull/32764">#32764</a>, <a href="https://redirect.github.com/facebook/react/pull/32772">#32772</a>, <a href="https://redirect.github.com/facebook/react/pull/32790">#32790</a>, <a href="https://redirect.github.com/facebook/react/pull/32819">#32819</a>, <a href="https://redirect.github.com/facebook/react/pull/32820">#32820</a>, <a href="https://redirect.github.com/facebook/react/pull/32822">#32822</a>, <a href="https://redirect.github.com/facebook/react/pull/32833">#32833</a>, <a href="https://redirect.github.com/facebook/react/pull/32849">#32849</a>, <a href="https://redirect.github.com/facebook/react/pull/33094">#33094</a>, <a href="https://redirect.github.com/facebook/react/pull/33191">#33191</a>, <a href="https://redirect.github.com/facebook/react/pull/33200">#33200</a>, <a href="https://redirect.github.com/facebook/react/pull/33206">#33206</a>, <a href="https://redirect.github.com/facebook/react/pull/33293">#33293</a>, <a href="https://redirect.github.com/facebook/react/pull/33330">#33330</a>, <a href="https://redirect.github.com/facebook/react/pull/33331">#33331</a>, <a href="https://redirect.github.com/facebook/react/pull/33332">#33332</a>, <a href="https://redirect.github.com/facebook/react/pull/33357">#33357</a>, <a href="https://redirect.github.com/facebook/react/pull/33362">#33362</a>, <a href="https://redirect.github.com/facebook/react/pull/33433">#33433</a>, <a href="https://redirect.github.com/facebook/react/pull/33576">#33576</a>, <a href="https://redirect.github.com/facebook/react/pull/34374">#34374</a>, <a href="https://redirect.github.com/facebook/react/pull/34450">#34450</a>, <a href="https://redirect.github.com/facebook/react/pull/34481">#34481</a>, <a href="https://redirect.github.com/facebook/react/pull/34500">#34500</a>, <a href="https://redirect.github.com/facebook/react/pull/34502">#34502</a>, <a href="https://redirect.github.com/facebook/react/pull/34510">#34510</a>, <a href="https://redirect.github.com/facebook/react/pull/34511">#34511</a>, <a href="https://redirect.github.com/facebook/react/pull/34539">#34539</a>, <a href="https://redirect.github.com/facebook/react/pull/35567">#35567</a>, <a href="https://redirect.github.com/facebook/react/pull/35564">#35564</a>, <a href="https://redirect.github.com/facebook/react/pull/35485">#35485</a>, <a href="https://redirect.github.com/facebook/react/pull/35380">#35380</a>, <a href="https://redirect.github.com/facebook/react/pull/35063">#35063</a>, <a href="https://redirect.github.com/facebook/react/pull/35060">#35060</a>, <a href="https://redirect.github.com/facebook/react/pull/34676">#34676</a>, <a href="https://redirect.github.com/facebook/react/pull/36917">#36917</a>, <a href="https://redirect.github.com/facebook/react/pull/35337">#35337</a>, <a href="https://redirect.github.com/facebook/react/pull/35520">#35520</a>)</li>
<li>Fragment Refs: Add Refs to <code>&lt;Fragment /&gt;</code> to support composable platform behavior (<a href="https://github.com/jackpope"><code>@jackpope</code></a>, <a href="https://github.com/sebmarkbage"><code>@sebmarkbage</code></a>, <a href="https://github.com/eps1lon"><code>@eps1lon</code></a>, <a href="https://github.com/Dhakshin2007"><code>@Dhakshin2007</code></a>, <a href="https://github.com/chirokas"><code>@chirokas</code></a>, <a href="https://github.com/teamleaderleo"><code>@teamleaderleo</code></a>, <a href="https://github.com/fallintoplace"><code>@fallintoplace</code></a>: <a href="https://redirect.github.com/facebook/react/pull/32465">#32465</a>, <a href="https://redirect.github.com/facebook/react/pull/32613">#32613</a>, <a href="https://redirect.github.com/facebook/react/pull/32619">#32619</a>, <a href="https://redirect.github.com/facebook/react/pull/32654">#32654</a>, <a href="https://redirect.github.com/facebook/react/pull/32660">#32660</a>, <a href="https://redirect.github.com/facebook/react/pull/32682">#32682</a>, <a href="https://redirect.github.com/facebook/react/pull/32722">#32722</a>, <a href="https://redirect.github.com/facebook/react/pull/32813">#32813</a>, <a href="https://redirect.github.com/facebook/react/pull/32814">#32814</a>, <a href="https://redirect.github.com/facebook/react/pull/33056">#33056</a>, <a href="https://redirect.github.com/facebook/react/pull/33058">#33058</a>, <a href="https://redirect.github.com/facebook/react/pull/33093">#33093</a>, <a href="https://redirect.github.com/facebook/react/pull/34069">#34069</a>, <a href="https://redirect.github.com/facebook/react/pull/34103">#34103</a>, <a href="https://redirect.github.com/facebook/react/pull/34544">#34544</a>, <a href="https://redirect.github.com/facebook/react/pull/34545">#34545</a>, <a href="https://redirect.github.com/facebook/react/pull/37062">#37062</a>, <a href="https://redirect.github.com/facebook/react/pull/37061">#37061</a>, <a href="https://redirect.github.com/facebook/react/pull/37060">#37060</a>, <a href="https://redirect.github.com/facebook/react/pull/36047">#36047</a>, <a href="https://redirect.github.com/facebook/react/pull/36010">#36010</a>, <a href="https://redirect.github.com/facebook/react/pull/35642">#35642</a>, <a href="https://redirect.github.com/facebook/react/pull/35641">#35641</a>, <a href="https://redirect.github.com/facebook/react/pull/35637">#35637</a>, <a href="https://redirect.github.com/facebook/react/pull/35630">#35630</a>, <a href="https://redirect.github.com/facebook/react/pull/34935">#34935</a>, <a href="https://redirect.github.com/facebook/react/pull/37457">#37457</a>, <a href="https://redirect.github.com/facebook/react/pull/37408">#37408</a>, <a href="https://redirect.github.com/facebook/react/pull/37326">#37326</a>, <a href="https://redirect.github.com/facebook/react/pull/37251">#37251</a>, <a href="https://redirect.github.com/facebook/react/pull/37171">#37171</a>, <a href="https://redirect.github.com/facebook/react/pull/37169">#37169</a>, <a href="https://redirect.github.com/facebook/react/pull/37168">#37168</a>, <a href="https://redirect.github.com/facebook/react/pull/37167">#37167</a>, <a href="https://redirect.github.com/facebook/react/pull/37166">#37166</a>, <a href="https://redirect.github.com/facebook/react/pull/37165">#37165</a>, <a href="https://redirect.github.com/facebook/react/pull/37164">#37164</a>, <a href="https://redirect.github.com/facebook/react/pull/37163">#37163</a>, <a href="https://redirect.github.com/facebook/react/pull/37162">#37162</a>, <a href="https://redirect.github.com/facebook/react/pull/37161">#37161</a>, <a href="https://redirect.github.com/facebook/react/pull/37160">#37160</a>, <a href="https://redirect.github.com/facebook/react/pull/37125">#37125</a>, <a href="https://redirect.github.com/facebook/react/pull/37063">#37063</a>)</li>
</ul>
<h2>New React DOM Features</h2>
<ul>
<li><code>browser()</code>: a new <code>react-dom</code> API that returns a usable which errors during server rendering and resolves in the browser. <code>use(browser())</code> inside a <code>&lt;Suspense&gt;</code> boundary marks a subtree as browser-only without reporting a recoverable error (<a href="https://github.com/gnoff"><code>@gnoff</code></a>: <a href="...

_Description has been truncated_
