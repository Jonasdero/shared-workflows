Bumps the all-dependencies group with 3 updates: [axios](https://github.com/axios/axios), [moment](https://github.com/moment/moment) and [node-cron](https://github.com/node-cron/node-cron).

Updates `axios` from 1.18.0 to 1.20.0
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/axios/axios/releases">axios's releases</a>.</em></p>
<blockquote>
<h2>v1.20.0 — August 19, 2026</h2>
<p>This release hardens runtime option handling, adds RFC 9110 status-code aliases, fixes Node.js and XHR reliability issues, and refreshes project tooling and documentation.</p>
<h2>⚠️ Breaking Changes &amp; Deprecations</h2>
<ul>
<li>HTTP Status Naming: Added ContentTooLarge (413) and UnprocessableContent (422), while retaining PayloadTooLarge and UnprocessableEntity as backward-compatible deprecated aliases. (<a href="https://redirect.github.com/axios/axios/issues/11082">#11082</a>)</li>
</ul>
<h2>🔒 Security Fixes</h2>
<ul>
<li>Runtime Option Handling: Hardened behavioral configuration reads against shared and foreign prototype pollution and normalized unsafe interceptor replacement objects. This also clarifies Fetch redirect and custom implementation behavior, HTTP/2 DNS and proxy handling, CIDR-based NO_PROXY matching, and malformed data URI rejection; see the PR for documented compatibility effects. (<a href="https://redirect.github.com/axios/axios/issues/11141">#11141</a>)</li>
</ul>
<h2>🐛 Bug Fixes</h2>
<ul>
<li>Interceptor Lifecycle: Prevented unbounded handler-array growth by trimming trailing ejected interceptors without changing iteration semantics, and kept interceptor operations safe when the public handlers field is nullish. (<a href="https://redirect.github.com/axios/axios/issues/11087">#11087</a>, <a href="https://redirect.github.com/axios/axios/issues/11118">#11118</a>)</li>
<li>Request Error Preservation: Prevented custom Error.prepareStackTrace implementations that return non-string values from replacing the original request failure with an unrelated TypeError. (<a href="https://redirect.github.com/axios/axios/issues/11109">#11109</a>)</li>
<li>XHR Reliability: Navigation-canceled requests now reject with ECONNABORTED instead of resolving with status 0, while successful downloads flush their final progress callback during the live loadend dispatch. (<a href="https://redirect.github.com/axios/axios/issues/11094">#11094</a>, <a href="https://redirect.github.com/axios/axios/issues/11121">#11121</a>)</li>
<li>Node.js Socket Memory: Removed request-context retention from per-socket error listeners, preventing completed response data from being pinned for the lifetime of pooled keep-alive sockets. (<a href="https://redirect.github.com/axios/axios/issues/11091">#11091</a>)</li>
<li>Core Methods and HTTP Errors: Prevented structural method-header buckets from leaking into outgoing headers, standardized invalid DNS lookup and httpVersion failures as AxiosError.ERR_BAD_OPTION_VALUE, and corrected the timeoutErrorMessage merge strategy. (<a href="https://redirect.github.com/axios/axios/issues/11096">#11096</a>)</li>
</ul>
<h2>🔧 Maintenance &amp; Chores</h2>
<ul>
<li>Dependencies: Updated fast-uri, postcss, js-yaml, mocha, development-tooling groups, and GitHub Actions dependencies. (<a href="https://redirect.github.com/axios/axios/issues/11092">#11092</a>, <a href="https://redirect.github.com/axios/axios/issues/11098">#11098</a>, <a href="https://redirect.github.com/axios/axios/issues/11099">#11099</a>, <a href="https://redirect.github.com/axios/axios/issues/11106">#11106</a>, <a href="https://redirect.github.com/axios/axios/issues/11107">#11107</a>, <a href="https://redirect.github.com/axios/axios/issues/11122">#11122</a>, <a href="https://redirect.github.com/axios/axios/issues/11123">#11123</a>, <a href="https://redirect.github.com/axios/axios/issues/11126">#11126</a>, <a href="https://redirect.github.com/axios/axios/issues/11127">#11127</a>, <a href="https://redirect.github.com/axios/axios/issues/11133">#11133</a>, <a href="https://redirect.github.com/axios/axios/issues/11140">#11140</a>, <a href="https://redirect.github.com/axios/axios/issues/11143">#11143</a>, <a href="https://redirect.github.com/axios/axios/issues/11144">#11144</a>)</li>
<li>Documentation: Applied the v1.19.0 documentation updates, added the missing fs import to the README stream example, introduced localized global search, and repaired the interceptor test link. (<a href="https://redirect.github.com/axios/axios/issues/11101">#11101</a>, <a href="https://redirect.github.com/axios/axios/issues/11113">#11113</a>, <a href="https://redirect.github.com/axios/axios/issues/11097">#11097</a>, <a href="https://redirect.github.com/axios/axios/issues/11119">#11119</a>)</li>
<li>Sponsorship: Updated sponsorship links and data and added ScrapingBee as a sponsor. (<a href="https://redirect.github.com/axios/axios/issues/11124">#11124</a>, <a href="https://redirect.github.com/axios/axios/issues/11136">#11136</a>, <a href="https://redirect.github.com/axios/axios/issues/11137">#11137</a>)</li>
<li>CI and Release: Switched ESM smoke tests to locked dependencies and synchronized package and runtime version metadata for v1.20.0. (<a href="https://redirect.github.com/axios/axios/issues/11128">#11128</a>, <a href="https://redirect.github.com/axios/axios/issues/11152">#11152</a>)</li>
</ul>
<h2>🌟 New Contributors</h2>
<p>We are thrilled to welcome our new contributors. Thank you for helping improve axios:</p>
<ul>
<li><a href="https://github.com/yens1"><code>@​yens1</code></a> (<a href="https://redirect.github.com/axios/axios/issues/11109">#11109</a>)</li>
<li><a href="https://github.com/Sasireddy001"><code>@​Sasireddy001</code></a> (<a href="https://redirect.github.com/axios/axios/issues/11113">#11113</a>)</li>
<li><a href="https://github.com/ari-token-security"><code>@​ari-token-security</code></a> (<a href="https://redirect.github.com/axios/axios/issues/11094">#11094</a>)</li>
<li><a href="https://github.com/timothyokooboh"><code>@​timothyokooboh</code></a> (<a href="https://redirect.github.com/axios/axios/issues/11097">#11097</a>)</li>
<li><a href="https://github.com/gi9439041-png"><code>@​gi9439041-png</code></a> (<a href="https://redirect.github.com/axios/axios/issues/11119">#11119</a>)</li>
<li><a href="https://github.com/Hashim1999164"><code>@​Hashim1999164</code></a> (<a href="https://redirect.github.com/axios/axios/issues/11082">#11082</a>)</li>
<li><a href="https://github.com/v-dev-cl"><code>@​v-dev-cl</code></a> (<a href="https://redirect.github.com/axios/axios/issues/11091">#11091</a>)</li>
<li><a href="https://github.com/r0h1tb"><code>@​r0h1tb</code></a> (<a href="https://redirect.github.com/axios/axios/issues/11118">#11118</a>)</li>
<li><a href="https://github.com/ostapondo"><code>@​ostapondo</code></a> (<a href="https://redirect.github.com/axios/axios/issues/11121">#11121</a>)</li>
</ul>
<p>Full Changelog (<a href="https://github.com/axios/axios/compare/v1.19.0...v1.20.0">https://github.com/axios/axios/compare/v1.19.0...v1.20.0</a>)</p>
<h2>v1.19.0 - July 22, 2026</h2>
<p>This release raises the form-data security floor, adds configuration and type-system capabilities, and fixes NO_PROXY matching, interceptor errors, progress reporting, and serialization edge cases.</p>
<h2>🔒 Security Fixes</h2>
<ul>
<li>Multipart Form Data: Raised the form-data dependency floor to ^4.0.6, preventing fresh installations from resolving versions affected by the CRLF injection vulnerability GHSA-hmw2-7cc7-3qxx (<a href="https://github.com/advisories/GHSA-hmw2-7cc7-3qxx">https://github.com/advisories/GHSA-hmw2-7cc7-3qxx</a>). (<a href="https://redirect.github.com/axios/axios/issues/11028">#11028</a>)</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/axios/axios/blob/v1.x/CHANGELOG.md">axios's changelog</a>.</em></p>
<blockquote>
<h1>Changelog</h1>
<h2>v1.19.0 — July 22, 2026</h2>
<p>This release raises the form-data security floor, adds configuration and type-system capabilities, and fixes NO_PROXY matching, interceptor errors, progress reporting, and serialization edge cases.</p>
<h2>🔒 Security Fixes</h2>
<ul>
<li>Multipart Form Data: Raised the form-data dependency floor to ^4.0.6, preventing fresh installations from resolving versions affected by the CRLF injection vulnerability GHSA-hmw2-7cc7-3qxx (<a href="https://github.com/advisories/GHSA-hmw2-7cc7-3qxx">https://github.com/advisories/GHSA-hmw2-7cc7-3qxx</a>). (<a href="https://redirect.github.com/axios/axios/issues/11028">#11028</a>)</li>
</ul>
<h2>🚀 New Features</h2>
<ul>
<li>Configuration Extensibility: Preserved own-enumerable symbol-keyed fields through mergeConfig and added a generic params type across public TypeScript declarations, responses, errors,
adapters, and serializers. (<a href="https://redirect.github.com/axios/axios/issues/11043">#11043</a>, <a href="https://redirect.github.com/axios/axios/issues/11081">#11081</a>)</li>
<li>Header Parameter Parsing: Added the opt-in AxiosHeaders.parseParameters() parser for quote-aware, RFC-style HTTP parameter parsing while preserving legacy parsing behavior. (<a href="https://redirect.github.com/axios/axios/issues/11051">#11051</a>)</li>
<li>HTTP Status Codes: Added the missing Cloudflare 520 WebServerReturnsAnUnknownError status and matching ESM/CJS declarations. (<a href="https://redirect.github.com/axios/axios/issues/11067">#11067</a>)</li>
</ul>
<h2>🐛 Bug Fixes</h2>
<ul>
<li>
<p>Form Data Conversion: Limited formDataToJSON path splitting to dot and bracket notation, preserving literal punctuation in keys, and removed browser-facing Buffer.from usage from toFormData to avoid unnecessary polyfills. (<a href="https://redirect.github.com/axios/axios/issues/11006">#11006</a>, <a href="https://redirect.github.com/axios/axios/issues/11018">#11018</a>)</p>
</li>
<li>
<p>Proxy Bypass: Canonicalized IPv4 shorthand, octal, and hexadecimal forms during NO_PROXY matching and honored * entries within comma- or space-separated bypass lists. (<a href="https://redirect.github.com/axios/axios/issues/11029">#11029</a>, <a href="https://redirect.github.com/axios/axios/issues/11053">#11053</a>)</p>
</li>
<li>
<p>Cancellation: Propagated already-aborted input signals immediately when composing abort signals. (<a href="https://redirect.github.com/axios/axios/issues/11035">#11035</a>)</p>
</li>
<li>
<p>Header Handling: Preserved empty first values for duplicate singleton headers and made AxiosHeaders#getSetCookie() consistently return arrays for present values. (<a href="https://redirect.github.com/axios/axios/issues/11036">#11036</a>, <a href="https://redirect.github.com/axios/axios/issues/11037">#11037</a>)</p>
</li>
<li>
<p>URL Handling: Included normalized, safely redacted offending URLs in malformed-protocol errors and removed repeated trailing slashes when combining base URLs. (<a href="https://redirect.github.com/axios/axios/issues/11008">#11008</a>, <a href="https://redirect.github.com/axios/axios/issues/11038">#11038</a>)</p>
</li>
<li>
<p>Progress Events: Clamped malformed negative progress values to zero and ensured final Node.js download progress events are delivered before streamed responses close. (<a href="https://redirect.github.com/axios/axios/issues/11039">#11039</a>, <a href="https://redirect.github.com/axios/axios/issues/11040">#11040</a>)</p>
</li>
<li>
<p>Error and JSON Serialization: Serialized Set values as arrays in JSON-compatible snapshots and synthesized useful AxiosError messages from otherwise-empty AggregateError instances. (<a href="https://redirect.github.com/axios/axios/issues/11044">#11044</a>, <a href="https://redirect.github.com/axios/axios/issues/11059">#11059</a>)</p>
</li>
<li>
<p>Content-Length Enforcement: Corrected base64 data: URL size estimation so maxContentLength is enforced consistently by the HTTP and Fetch adapters. (<a href="https://redirect.github.com/axios/axios/issues/11061">#11061</a>)</p>
</li>
<li>
<p>Synchronous Interceptors: Prevented requests from being dispatched after synchronous request interceptors fail unless their paired rejection handler resolves successfully. (<a href="https://redirect.github.com/axios/axios/issues/11071">#11071</a>)</p>
</li>
</ul>
<h2>🔧 Maintenance &amp; Chores</h2>
<ul>
<li>Dependencies: Updated development and test tooling, the docs fixture's Axios version, and GitHub Actions integrations including Checkout, Setup Node, Setup Deno, and Zizmor. (<a href="https://redirect.github.com/axios/axios/issues/11031">#11031</a>, <a href="https://redirect.github.com/axios/axios/issues/11055">#11055</a>, <a href="https://redirect.github.com/axios/axios/issues/11056">#11056</a>, <a href="https://redirect.github.com/axios/axios/issues/11058">#11058</a>, <a href="https://redirect.github.com/axios/axios/issues/11079">#11079</a>, <a href="https://redirect.github.com/axios/axios/issues/11080">#11080</a>, <a href="https://redirect.github.com/axios/axios/issues/11088">#11088</a>, <a href="https://redirect.github.com/axios/axios/issues/11089">#11089</a>, <a href="https://redirect.github.com/axios/axios/issues/11090">#11090</a>)</li>
<li>Build Outputs: Limited sourcemap generation to published minified bundles, removing broken map references from non-minified builds. (<a href="https://redirect.github.com/axios/axios/issues/11054">#11054</a>)</li>
<li>Form Data Internals: Centralized FormData header handling and made the Node.js adapter tolerate getHeaders() returning undefined under the content-only policy. (<a href="https://redirect.github.com/axios/axios/issues/11062">#11062</a>)</li>
<li>Developer Experience: Ignored common local AI-tooling directories and fixed a constant-reassignment crash when the development sandbox serves its root path. (<a href="https://redirect.github.com/axios/axios/issues/11032">#11032</a>, <a href="https://redirect.github.com/axios/axios/issues/11073">#11073</a>)</li>
<li>Documentation: Updated sponsor information, clarified that baseURL is not a path-security boundary, scoped provenance claims to attested releases, and corrected the configuration-defaults documentation. (<a href="https://redirect.github.com/axios/axios/issues/11041">#11041</a>, <a href="https://redirect.github.com/axios/axios/issues/11068">#11068</a>, <a href="https://redirect.github.com/axios/axios/issues/11076">#11076</a>, <a href="https://redirect.github.com/axios/axios/issues/11078">#11078</a>)</li>
<li>Publishing: Simplified v1 publishing to use the npm version bundled with Node.js 26 and updated package metadata for the 1.19.0 release. (<a href="https://redirect.github.com/axios/axios/issues/11083">#11083</a>, <a href="https://redirect.github.com/axios/axios/issues/11095">#11095</a>)</li>
</ul>
<h2>🌟 New Contributors</h2>
<p>We are thrilled to welcome our new contributors. Thank you for helping improve Axios:</p>
<ul>
<li><a href="https://github.com/afonsojramos"><code>@​afonsojramos</code></a> (<a href="https://redirect.github.com/axios/axios/issues/11028">#11028</a>)</li>
<li><a href="https://github.com/MahinAnowar"><code>@​MahinAnowar</code></a> (<a href="https://redirect.github.com/axios/axios/issues/11006">#11006</a>)</li>
<li><a href="https://github.com/yassertawfik4"><code>@​yassertawfik4</code></a> (<a href="https://redirect.github.com/axios/axios/issues/11024">#11024</a>)</li>
<li><a href="https://github.com/AnandSundar"><code>@​AnandSundar</code></a> (<a href="https://redirect.github.com/axios/axios/issues/11029">#11029</a>)</li>
<li><a href="https://github.com/lin-hongkuan"><code>@​lin-hongkuan</code></a> (<a href="https://redirect.github.com/axios/axios/issues/11035">#11035</a>)</li>
<li><a href="https://github.com/Wali007-lab"><code>@​Wali007-lab</code></a> (<a href="https://redirect.github.com/axios/axios/issues/11054">#11054</a>)</li>
<li><a href="https://github.com/magicdawn"><code>@​magicdawn</code></a> (<a href="https://redirect.github.com/axios/axios/issues/11043">#11043</a>)</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href="https://github.com/axios/axios/commit/84a9f3b9a4f3244b8c8e818f557d64c7b964fb25"><code>84a9f3b</code></a> chore(release): prepare release 1.20.0 (<a href="https://redirect.github.com/axios/axios/issues/11152">#11152</a>)</li>
<li><a href="https://github.com/axios/axios/commit/e6824eec5fcf9da467a9792724396badc490c469"><code>e6824ee</code></a> fix: core methodList, HTTP adapter errors, and add tests (<a href="https://redirect.github.com/axios/axios/issues/11096">#11096</a>)</li>
<li><a href="https://github.com/axios/axios/commit/d8a919fd81403d59058c0e9dbefc540407dee83f"><code>d8a919f</code></a> fix(xhr): flush final progress during the live loadend dispatch (<a href="https://redirect.github.com/axios/axios/issues/11121">#11121</a>)</li>
<li><a href="https://github.com/axios/axios/commit/2d2a21af8a433089474a2149781799c93acbcf3c"><code>2d2a21a</code></a> fix(interceptors): tolerate nullish handlers in syncHandlerEntries (<a href="https://redirect.github.com/axios/axios/issues/11118">#11118</a>)</li>
<li><a href="https://github.com/axios/axios/commit/d19040bda7a8be2f82c3c6e1a5bc03917daee39a"><code>d19040b</code></a> fix: harden runtime option handling (<a href="https://redirect.github.com/axios/axios/issues/11141">#11141</a>)</li>
<li><a href="https://github.com/axios/axios/commit/e0a02dd16671deabe2b809334d4c2ebede29a233"><code>e0a02dd</code></a> chore(deps): bump zizmorcore/zizmor-action from 0.6.1 to 0.6.2 in the github-...</li>
<li><a href="https://github.com/axios/axios/commit/d10cb3aa3cda1d78721ddf96be590478df26cd81"><code>d10cb3a</code></a> chore(deps-dev): bump the development_dependencies group with 4 updates (<a href="https://redirect.github.com/axios/axios/issues/11143">#11143</a>)</li>
<li><a href="https://github.com/axios/axios/commit/2c94646eb7cb7ab9dcb2aefdb04ab1b040c28e16"><code>2c94646</code></a> chore(deps): bump js-yaml and mocha in /tests/smoke/cjs (<a href="https://redirect.github.com/axios/axios/issues/11133">#11133</a>)</li>
<li><a href="https://github.com/axios/axios/commit/76c12bce5a4fe9a45bef9a5bf2baaf599d7d382e"><code>76c12bc</code></a> chore(deps-dev): bump js-yaml from 4.3.0 to 4.3.1 (<a href="https://redirect.github.com/axios/axios/issues/11140">#11140</a>)</li>
<li><a href="https://github.com/axios/axios/commit/ba98559a7f5a18e531b5762387e5957bd281af3d"><code>ba98559</code></a> docs: add ScrapingBee sponsor (<a href="https://redirect.github.com/axios/axios/issues/11137">#11137</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/axios/axios/compare/v1.18.0...v1.20.0">compare view</a></li>
</ul>
</details>
<br />

Updates `moment` from 2.29.4 to 2.31.0
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/moment/moment/releases">moment's releases</a>.</em></p>
<blockquote>
<h2>2.31.0</h2>
<p><em>Released Sep 14, 2026</em></p>
<h4>Security fixes</h4>
<ul>
<li>Fix <a href="https://www.cve.org/CVERecord?id=CVE-2026-17495">CVE-2026-17495</a> (<a href="https://github.com/moment/moment/security/advisories/GHSA-4p3w-j4w9-5jqw">GHSA-4p3w-j4w9-5jqw</a>)</li>
</ul>
<h4>Bug fixes</h4>
<ul>
<li><a href="https://redirect.github.com/moment/moment/pull/6376">#6376</a> Prevent object prototype properties from being used as format tokens</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6386">#6386</a> Normalize lazy-loaded locale names</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6404">#6404</a> Fix parsing issue with <code>eHHmm</code> format</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6433">#6433</a> Ignore non-Moment arguments in min and max</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6434">#6434</a> Fix inherited lowercase long date formats</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6436">#6436</a> Reset locale parsing caches after updates</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6437">#6437</a> Fix weekday mismatch when the format only has part of a date</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6442">#6442</a> Fix <code>locale('__proto__')</code> corrupting the global locale</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6443">#6443</a> Avoid <code>Object.assign</code> in <code>duration.humanize</code></li>
<li><a href="https://redirect.github.com/moment/moment/pull/6446">#6446</a> Validate range when parsing a time zone offset</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6447">#6447</a> Include metadata in all-locales bundle</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6448">#6448</a> Apply postformat to locale relative time methods</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6450">#6450</a> Add stack traces to conditional deprecation warnings</li>
</ul>
<h4>New features</h4>
<ul>
<li><a href="https://redirect.github.com/moment/moment/pull/6451">#6451</a> Add internal date-default hook for Moment Timezone</li>
</ul>
<h5>New locales</h5>
<ul>
<li><a href="https://redirect.github.com/moment/moment/pull/6000">#6000</a>: Pashto ('ps')</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6278">#6278</a>, <a href="https://redirect.github.com/moment/moment/pull/6379">#6379</a>: Amharic (Ethiopia) ('am-et')</li>
</ul>
<h4>Updates to existing locales</h4>
<ul>
<li><a href="https://redirect.github.com/moment/moment/pull/5404">#5404</a> Portuguese (Brazil) ('pt-br'): Fix wrong plural usage for time</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6197">#6197</a> Indonesian ('id'): Correct the abbreviation for August</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6217">#6217</a> Georgian ('ka') and Dutch (Belgium) ('nl-be'): Correct <code>L</code> date formats</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6289">#6289</a> Swedish ('sv'): Correct the abbreviation for Thursday</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6306">#6306</a> Catalan ('ca'): Use typographic apostrophes in relative time</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6347">#6347</a> Swahili ('sw'): Correct the spelling of hour in calendar output</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6360">#6360</a> Ukrainian ('uk'): Use ISO week numbering</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6370">#6370</a> Ukrainian ('uk'): Use U+02BC apostrophes in Friday names</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6371">#6371</a> Hungarian ('hu'): Preserve numeric values in relative seconds</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6391">#6391</a> Swahili ('sw'): Fix weekday and relative-time grammar</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6396">#6396</a> German ('de', 'de-at', 'de-ch'): Parse short months without trailing dots</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6409">#6409</a> Uzbek ('uz', 'uz-latn'): Fix past relative-time formatting</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6410">#6410</a> Polish ('pl'): Use genitive month names in dotted day formats</li>
</ul>
<h2>2.30.1</h2>
<p>Note - this was not a new release, but rather just updating GitHub's <code>latest</code> release to indicate the existing version <code>2.30.1</code> from Dec 27, 2023.</p>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/moment/moment/blob/develop/CHANGELOG.md">moment's changelog</a>.</em></p>
<blockquote>
<h3>2.31.0</h3>
<p><em>Released Sep 14, 2026</em></p>
<h4>Security fixes</h4>
<ul>
<li>Fix <a href="https://www.cve.org/CVERecord?id=CVE-2026-17495">CVE-2026-17495</a> (<a href="https://github.com/moment/moment/security/advisories/GHSA-4p3w-j4w9-5jqw">GHSA-4p3w-j4w9-5jqw</a>)</li>
</ul>
<h4>Bug fixes</h4>
<ul>
<li><a href="https://redirect.github.com/moment/moment/pull/6376">#6376</a> Prevent object prototype properties from being used as format tokens</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6386">#6386</a> Normalize lazy-loaded locale names</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6404">#6404</a> Fix parsing issue with <code>eHHmm</code> format</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6433">#6433</a> Ignore non-Moment arguments in min and max</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6434">#6434</a> Fix inherited lowercase long date formats</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6436">#6436</a> Reset locale parsing caches after updates</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6437">#6437</a> Fix weekday mismatch when the format only has part of a date</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6442">#6442</a> Fix <code>locale('__proto__')</code> corrupting the global locale</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6443">#6443</a> Avoid <code>Object.assign</code> in <code>duration.humanize</code></li>
<li><a href="https://redirect.github.com/moment/moment/pull/6446">#6446</a> Validate range when parsing a time zone offset</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6447">#6447</a> Include metadata in all-locales bundle</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6448">#6448</a> Apply postformat to locale relative time methods</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6450">#6450</a> Add stack traces to conditional deprecation warnings</li>
</ul>
<h4>New features</h4>
<ul>
<li><a href="https://redirect.github.com/moment/moment/pull/6451">#6451</a> Add internal date-default hook for Moment Timezone</li>
</ul>
<h5>New locales</h5>
<ul>
<li><a href="https://redirect.github.com/moment/moment/pull/6000">#6000</a>: Pashto ('ps')</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6278">#6278</a>, <a href="https://redirect.github.com/moment/moment/pull/6379">#6379</a>: Amharic (Ethiopia) ('am-et')</li>
</ul>
<h4>Updates to existing locales</h4>
<ul>
<li><a href="https://redirect.github.com/moment/moment/pull/5404">#5404</a> Portuguese (Brazil) ('pt-br'): Fix wrong plural usage for time</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6197">#6197</a> Indonesian ('id'): Correct the abbreviation for August</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6217">#6217</a> Georgian ('ka') and Dutch (Belgium) ('nl-be'): Correct <code>L</code> date formats</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6289">#6289</a> Swedish ('sv'): Correct the abbreviation for Thursday</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6306">#6306</a> Catalan ('ca'): Use typographic apostrophes in relative time</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6347">#6347</a> Swahili ('sw'): Correct the spelling of hour in calendar output</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6360">#6360</a> Ukrainian ('uk'): Use ISO week numbering</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6370">#6370</a> Ukrainian ('uk'): Use U+02BC apostrophes in Friday names</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6371">#6371</a> Hungarian ('hu'): Preserve numeric values in relative seconds</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6391">#6391</a> Swahili ('sw'): Fix weekday and relative-time grammar</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6396">#6396</a> German ('de', 'de-at', 'de-ch'): Parse short months without trailing dots</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6409">#6409</a> Uzbek ('uz', 'uz-latn'): Fix past relative-time formatting</li>
<li><a href="https://redirect.github.com/moment/moment/pull/6410">#6410</a> Polish ('pl'): Use genitive month names in dotted day formats</li>
</ul>
<h3>2.30.1</h3>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href="https://github.com/moment/moment/commit/15b45d48a176312e8f34143c5a800090abf4787f"><code>15b45d4</code></a> [pkg] Build 2.31.0 (<a href="https://redirect.github.com/moment/moment/issues/6452">#6452</a>)</li>
<li><a href="https://github.com/moment/moment/commit/631cd81454ee001e1f508e21270eae0b6bb62974"><code>631cd81</code></a> [pkg] Update changelog for upcoming release (<a href="https://redirect.github.com/moment/moment/issues/6394">#6394</a>)</li>
<li><a href="https://github.com/moment/moment/commit/6caff9e0d54e85a63a6eb97d7361f1da35bc58f4"><code>6caff9e</code></a> Merge commit from fork</li>
<li><a href="https://github.com/moment/moment/commit/710703b7eac93535ad125cbf4feb3d42afed6fb3"><code>710703b</code></a> [feature] Add internal date-default hook for Moment Timezone (<a href="https://redirect.github.com/moment/moment/issues/6451">#6451</a>)</li>
<li><a href="https://github.com/moment/moment/commit/863ed940556e6e63c43de23981a4853036a003ac"><code>863ed94</code></a> [bugfix] Add stack traces to conditional deprecation warnings (<a href="https://redirect.github.com/moment/moment/issues/6450">#6450</a>)</li>
<li><a href="https://github.com/moment/moment/commit/2c7abe1c42ee15445d30c2c5d536750a1e43a09a"><code>2c7abe1</code></a> [bugfix] Apply postformat to locale relative time methods (<a href="https://redirect.github.com/moment/moment/issues/6448">#6448</a>)</li>
<li><a href="https://github.com/moment/moment/commit/9c45ac38690c649c95e19923276b63da5fe2be26"><code>9c45ac3</code></a> [bugfix] Include metadata in all-locales bundle (<a href="https://redirect.github.com/moment/moment/issues/6447">#6447</a>)</li>
<li><a href="https://github.com/moment/moment/commit/f6eefc5fc7b44ceccbd007aeffc48ebc5eac30fa"><code>f6eefc5</code></a> [bugfix] Validate timezone offset range (<a href="https://redirect.github.com/moment/moment/issues/6446">#6446</a>)</li>
<li><a href="https://github.com/moment/moment/commit/136b441794a3bb207d593add3b59e9de0e062523"><code>136b441</code></a> [bugfix] Avoid Object.assign in duration.humanize (<a href="https://redirect.github.com/moment/moment/issues/6443">#6443</a>)</li>
<li><a href="https://github.com/moment/moment/commit/0d1050437b40f66ac47e14b285bb3d09676cf2e0"><code>0d10504</code></a> [bugfix] Fix locale('<strong>proto</strong>') corrupting the global locale (<a href="https://redirect.github.com/moment/moment/issues/6442">#6442</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/moment/moment/compare/2.29.4...2.31.0">compare view</a></li>
</ul>
</details>
<details>
<summary>Maintainer changes</summary>
<p>This version was pushed to npm by <a href="https://www.npmjs.com/~GitHub%20Actions">GitHub Actions</a>, a new releaser for moment since your current version.</p>
</details>
<br />

Updates `node-cron` from 4.2.1 to 4.6.0
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/node-cron/node-cron/releases">node-cron's releases</a>.</em></p>
<blockquote>
<h2>v4.6.0</h2>
<h2><a href="https://github.com/node-cron/node-cron/compare/v4.5.0...v4.6.0">4.6.0</a> (2026-07-04)</h2>
<h3>Added</h3>
<ul>
<li>add cron.shutdown(timeout?) for graceful process teardown (<a href="https://redirect.github.com/node-cron/node-cron/issues/589">#589</a>) (<a href="https://github.com/node-cron/node-cron/commit/35f1a61ba7cef987f7ed342489d8d0f0220553b8">35f1a61</a>)</li>
<li>add unref option for heartbeat timers (<a href="https://redirect.github.com/node-cron/node-cron/issues/588">#588</a>) (<a href="https://github.com/node-cron/node-cron/commit/35cb140d9c2d790ff295d54fbe82f6eec9b27e33">35cb140</a>)</li>
<li><strong>day-of-month:</strong> Quartz-style W, L-n and ? modifiers (<a href="https://redirect.github.com/node-cron/node-cron/issues/570">#570</a>) (<a href="https://github.com/node-cron/node-cron/commit/cbe379bce9d770c84328399dca514bd92a467c18">cbe379b</a>)</li>
<li>emit task:failed when a background daemon exits unexpectedly (<a href="https://github.com/node-cron/node-cron/commit/7bd91d62d1472d52f9adbddfddc0c47458623080">7bd91d6</a>)</li>
<li>support cron expression nicknames (<a href="https://github.com/yearly"><code>@​yearly</code></a>, <a href="https://github.com/daily"><code>@​daily</code></a>, etc.) (<a href="https://redirect.github.com/node-cron/node-cron/issues/579">#579</a>) (<a href="https://github.com/node-cron/node-cron/commit/6a6e14e43ab4ce5c21b52414a17e3e20311bd7bf">6a6e14e</a>)</li>
</ul>
<h3>Fixed</h3>
<ul>
<li>background task state transition on stop/destroy without fork (<a href="https://redirect.github.com/node-cron/node-cron/issues/584">#584</a>) (<a href="https://github.com/node-cron/node-cron/commit/9dbc6de269cf5855b0afc037fb4446ef9791d761">9dbc6de</a>)</li>
<li>clear jitter timeout on runner stop (<a href="https://redirect.github.com/node-cron/node-cron/issues/583">#583</a>) (<a href="https://github.com/node-cron/node-cron/commit/28b8146dd164ea992e1d5a649756b2bba4e062c4">28b8146</a>)</li>
<li>CommonJS type resolution (<a href="https://redirect.github.com/node-cron/node-cron/issues/608">#608</a>) (<a href="https://github.com/node-cron/node-cron/commit/ee9d294e71e526edffa2a2f902cad71e1f570d44">ee9d294</a>)</li>
<li>correct falied-&gt;failed typo in daemon task error log (<a href="https://redirect.github.com/node-cron/node-cron/issues/594">#594</a>) (<a href="https://github.com/node-cron/node-cron/commit/66c6961f2140d84cb71b101013abc170977297eb">66c6961</a>)</li>
<li>correct shutdown listener typing that broke the build (<a href="https://redirect.github.com/node-cron/node-cron/issues/595">#595</a>) (<a href="https://github.com/node-cron/node-cron/commit/7aac3adc22516faad054f2b3ef7362edf62e20f3">7aac3ad</a>)</li>
<li>correlate execute() by id, isolate event hooks, and stop counting manual runs toward maxExecutions (<a href="https://redirect.github.com/node-cron/node-cron/issues/607">#607</a>) (<a href="https://github.com/node-cron/node-cron/commit/0f039a94dcaf6221ea406221b1e7c5eb34a47c4b">0f039a9</a>)</li>
<li>daemon serialized task state with wrong field name (<a href="https://redirect.github.com/node-cron/node-cron/issues/587">#587</a>) (<a href="https://github.com/node-cron/node-cron/commit/688d465b82889f07f39dfef9170d808c1f40330e">688d465</a>)</li>
<li>expand inverted ranges with wrap-around instead of silently swapping (<a href="https://redirect.github.com/node-cron/node-cron/issues/602">#602</a>) (<a href="https://github.com/node-cron/node-cron/commit/a10ae53626f1cc6e426e23266423f5e334a6871e">a10ae53</a>)</li>
<li>harden cron.shutdown() teardown (<a href="https://redirect.github.com/node-cron/node-cron/issues/598">#598</a>) (<a href="https://github.com/node-cron/node-cron/commit/a0b0d1ff9313d0f8532130e5fcb873f29f48fd1f">a0b0d1f</a>)</li>
<li>kill orphan child process on background task stop/destroy timeout (<a href="https://redirect.github.com/node-cron/node-cron/issues/582">#582</a>) (<a href="https://github.com/node-cron/node-cron/commit/8179e105a02b91035bce441309c1cda12aaf4c4a">8179e10</a>)</li>
<li>make concurrent background start() await the daemon and time out coordinator lookups (<a href="https://redirect.github.com/node-cron/node-cron/issues/605">#605</a>) (<a href="https://github.com/node-cron/node-cron/commit/446f03ae8f366683c43b186b93bcba5091a00042">446f03a</a>)</li>
<li>make lifecycle calls on a destroyed task safe no-ops (<a href="https://redirect.github.com/node-cron/node-cron/issues/600">#600</a>) (<a href="https://github.com/node-cron/node-cron/commit/7fa979514f9181aa63b0363cddb2acbf045b1f8c">7fa9795</a>)</li>
<li>prevent double destroy on registry remove (<a href="https://redirect.github.com/node-cron/node-cron/issues/585">#585</a>) (<a href="https://github.com/node-cron/node-cron/commit/8ae9f06463954754d4958f9eb478aed73e8adc4d">8ae9f06</a>)</li>
<li><strong>release-please:</strong> match existing v-prefixed tags (<a href="https://redirect.github.com/node-cron/node-cron/issues/575">#575</a>) (<a href="https://github.com/node-cron/node-cron/commit/e43c152188d993f59a12e3e9e258a695b44ca579">e43c152</a>)</li>
<li>runner promise bugs that could hang scheduling or crash process (<a href="https://redirect.github.com/node-cron/node-cron/issues/581">#581</a>) (<a href="https://github.com/node-cron/node-cron/commit/0ae62be8b3639762f1b09569cbb66503c940d8e5">0ae62be</a>)</li>
<li>unref the IPC channel so background tasks let the process exit (<a href="https://redirect.github.com/node-cron/node-cron/issues/599">#599</a>) (<a href="https://github.com/node-cron/node-cron/commit/534e59344c019bc69869bc33e5cdcf1ff8ae1f1e">534e593</a>)</li>
<li>validate the cron expression when scheduling a task (<a href="https://redirect.github.com/node-cron/node-cron/issues/603">#603</a>) (<a href="https://github.com/node-cron/node-cron/commit/196e6cd41ac32ab9df56668ac70e1b5232384bb8">196e6cd</a>)</li>
<li>validate() consistency and multi-asterisk expansion (<a href="https://redirect.github.com/node-cron/node-cron/issues/606">#606</a>) (<a href="https://github.com/node-cron/node-cron/commit/8cf41c436f5b544e32908d6e73b2679e973074e3">8cf41c4</a>)</li>
<li>weekday 7-to-0 conversion corrupting ranges (<a href="https://redirect.github.com/node-cron/node-cron/issues/580">#580</a>) (<a href="https://github.com/node-cron/node-cron/commit/c8a3943817cc1338d4f03dbc7ad52fa34d449134">c8a3943</a>)</li>
</ul>
<h3>Changed</h3>
<ul>
<li>replace chai and sinon with native vitest assertions (<a href="https://redirect.github.com/node-cron/node-cron/issues/590">#590</a>) (<a href="https://github.com/node-cron/node-cron/commit/d29d07a005911b4ae19ce5a6bb55571018972e1f">d29d07a</a>)</li>
</ul>
<h2>v4.5.0</h2>
<h2>Added</h2>
<ul>
<li><strong><code>lastRun()</code></strong> introspection getter on <code>ScheduledTask</code>: returns <code>{ date, result }</code> after a successful execution, <code>{ date, error }</code> after a failed one, or <code>null</code> before the first run.</li>
<li><strong>Extended day-of-week tokens</strong>: <code>&lt;weekday&gt;#&lt;nth&gt;</code> (nth weekday of the month, e.g. <code>1#1</code> for the first Monday) and <code>&lt;weekday&gt;L</code> (last weekday of the month, e.g. <code>5L</code> for the last Friday).</li>
</ul>
<h2>Performance</h2>
<ul>
<li>Cache <code>Intl.DateTimeFormat</code> instances per timezone instead of rebuilding on every call.</li>
<li>Parse the cron expression once per <code>TimeMatcher</code> instead of re-parsing in <code>MatcherWalker</code>.</li>
<li>Compute the GMT offset lazily (only when formatting ISO strings, not during the next-run search).</li>
<li>Replace <code>crypto.randomBytes</code> with <code>crypto.randomUUID</code> for internal ID generation.</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/node-cron/node-cron/blob/main/CHANGELOG.md">node-cron's changelog</a>.</em></p>
<blockquote>
<h2><a href="https://github.com/node-cron/node-cron/compare/v4.5.0...v4.6.0">4.6.0</a> (2026-07-04)</h2>
<h3>Added</h3>
<ul>
<li>add cron.shutdown(timeout?) for graceful process teardown (<a href="https://redirect.github.com/node-cron/node-cron/issues/589">#589</a>) (<a href="https://github.com/node-cron/node-cron/commit/35f1a61ba7cef987f7ed342489d8d0f0220553b8">35f1a61</a>)</li>
<li>add unref option for heartbeat timers (<a href="https://redirect.github.com/node-cron/node-cron/issues/588">#588</a>) (<a href="https://github.com/node-cron/node-cron/commit/35cb140d9c2d790ff295d54fbe82f6eec9b27e33">35cb140</a>)</li>
<li><strong>day-of-month:</strong> Quartz-style W, L-n and ? modifiers (<a href="https://redirect.github.com/node-cron/node-cron/issues/570">#570</a>) (<a href="https://github.com/node-cron/node-cron/commit/cbe379bce9d770c84328399dca514bd92a467c18">cbe379b</a>)</li>
<li>emit task:failed when a background daemon exits unexpectedly (<a href="https://github.com/node-cron/node-cron/commit/7bd91d62d1472d52f9adbddfddc0c47458623080">7bd91d6</a>)</li>
<li>support cron expression nicknames (<a href="https://github.com/yearly"><code>@​yearly</code></a>, <a href="https://github.com/daily"><code>@​daily</code></a>, etc.) (<a href="https://redirect.github.com/node-cron/node-cron/issues/579">#579</a>) (<a href="https://github.com/node-cron/node-cron/commit/6a6e14e43ab4ce5c21b52414a17e3e20311bd7bf">6a6e14e</a>)</li>
</ul>
<h3>Fixed</h3>
<ul>
<li>background task state transition on stop/destroy without fork (<a href="https://redirect.github.com/node-cron/node-cron/issues/584">#584</a>) (<a href="https://github.com/node-cron/node-cron/commit/9dbc6de269cf5855b0afc037fb4446ef9791d761">9dbc6de</a>)</li>
<li>clear jitter timeout on runner stop (<a href="https://redirect.github.com/node-cron/node-cron/issues/583">#583</a>) (<a href="https://github.com/node-cron/node-cron/commit/28b8146dd164ea992e1d5a649756b2bba4e062c4">28b8146</a>)</li>
<li>CommonJS type resolution (<a href="https://redirect.github.com/node-cron/node-cron/issues/608">#608</a>) (<a href="https://github.com/node-cron/node-cron/commit/ee9d294e71e526edffa2a2f902cad71e1f570d44">ee9d294</a>)</li>
<li>correct falied-&gt;failed typo in daemon task error log (<a href="https://redirect.github.com/node-cron/node-cron/issues/594">#594</a>) (<a href="https://github.com/node-cron/node-cron/commit/66c6961f2140d84cb71b101013abc170977297eb">66c6961</a>)</li>
<li>correct shutdown listener typing that broke the build (<a href="https://redirect.github.com/node-cron/node-cron/issues/595">#595</a>) (<a href="https://github.com/node-cron/node-cron/commit/7aac3adc22516faad054f2b3ef7362edf62e20f3">7aac3ad</a>)</li>
<li>correlate execute() by id, isolate event hooks, and stop counting manual runs toward maxExecutions (<a href="https://redirect.github.com/node-cron/node-cron/issues/607">#607</a>) (<a href="https://github.com/node-cron/node-cron/commit/0f039a94dcaf6221ea406221b1e7c5eb34a47c4b">0f039a9</a>)</li>
<li>daemon serialized task state with wrong field name (<a href="https://redirect.github.com/node-cron/node-cron/issues/587">#587</a>) (<a href="https://github.com/node-cron/node-cron/commit/688d465b82889f07f39dfef9170d808c1f40330e">688d465</a>)</li>
<li>expand inverted ranges with wrap-around instead of silently swapping (<a href="https://redirect.github.com/node-cron/node-cron/issues/602">#602</a>) (<a href="https://github.com/node-cron/node-cron/commit/a10ae53626f1cc6e426e23266423f5e334a6871e">a10ae53</a>)</li>
<li>harden cron.shutdown() teardown (<a href="https://redirect.github.com/node-cron/node-cron/issues/598">#598</a>) (<a href="https://github.com/node-cron/node-cron/commit/a0b0d1ff9313d0f8532130e5fcb873f29f48fd1f">a0b0d1f</a>)</li>
<li>kill orphan child process on background task stop/destroy timeout (<a href="https://redirect.github.com/node-cron/node-cron/issues/582">#582</a>) (<a href="https://github.com/node-cron/node-cron/commit/8179e105a02b91035bce441309c1cda12aaf4c4a">8179e10</a>)</li>
<li>make concurrent background start() await the daemon and time out coordinator lookups (<a href="https://redirect.github.com/node-cron/node-cron/issues/605">#605</a>) (<a href="https://github.com/node-cron/node-cron/commit/446f03ae8f366683c43b186b93bcba5091a00042">446f03a</a>)</li>
<li>make lifecycle calls on a destroyed task safe no-ops (<a href="https://redirect.github.com/node-cron/node-cron/issues/600">#600</a>) (<a href="https://github.com/node-cron/node-cron/commit/7fa979514f9181aa63b0363cddb2acbf045b1f8c">7fa9795</a>)</li>
<li>prevent double destroy on registry remove (<a href="https://redirect.github.com/node-cron/node-cron/issues/585">#585</a>) (<a href="https://github.com/node-cron/node-cron/commit/8ae9f06463954754d4958f9eb478aed73e8adc4d">8ae9f06</a>)</li>
<li><strong>release-please:</strong> match existing v-prefixed tags (<a href="https://redirect.github.com/node-cron/node-cron/issues/575">#575</a>) (<a href="https://github.com/node-cron/node-cron/commit/e43c152188d993f59a12e3e9e258a695b44ca579">e43c152</a>)</li>
<li>runner promise bugs that could hang scheduling or crash process (<a href="https://redirect.github.com/node-cron/node-cron/issues/581">#581</a>) (<a href="https://github.com/node-cron/node-cron/commit/0ae62be8b3639762f1b09569cbb66503c940d8e5">0ae62be</a>)</li>
<li>unref the IPC channel so background tasks let the process exit (<a href="https://redirect.github.com/node-cron/node-cron/issues/599">#599</a>) (<a href="https://github.com/node-cron/node-cron/commit/534e59344c019bc69869bc33e5cdcf1ff8ae1f1e">534e593</a>)</li>
<li>validate the cron expression when scheduling a task (<a href="https://redirect.github.com/node-cron/node-cron/issues/603">#603</a>) (<a href="https://github.com/node-cron/node-cron/commit/196e6cd41ac32ab9df56668ac70e1b5232384bb8">196e6cd</a>)</li>
<li>validate() consistency and multi-asterisk expansion (<a href="https://redirect.github.com/node-cron/node-cron/issues/606">#606</a>) (<a href="https://github.com/node-cron/node-cron/commit/8cf41c436f5b544e32908d6e73b2679e973074e3">8cf41c4</a>)</li>
<li>weekday 7-to-0 conversion corrupting ranges (<a href="https://redirect.github.com/node-cron/node-cron/issues/580">#580</a>) (<a href="https://github.com/node-cron/node-cron/commit/c8a3943817cc1338d4f03dbc7ad52fa34d449134">c8a3943</a>)</li>
</ul>
<h3>Changed</h3>
<ul>
<li>replace chai and sinon with native vitest assertions (<a href="https://redirect.github.com/node-cron/node-cron/issues/590">#590</a>) (<a href="https://github.com/node-cron/node-cron/commit/d29d07a005911b4ae19ce5a6bb55571018972e1f">d29d07a</a>)</li>
</ul>
<h2>[4.5.0] - 2026-06-21</h2>
<h3>Added</h3>
<ul>
<li><strong><code>lastRun()</code></strong> introspection getter on <code>ScheduledTask</code>: returns <code>{ date, result }</code> after
a successful execution, <code>{ date, error }</code> after a failed one, or <code>null</code> before the first
run. (<a href="https://redirect.github.com/node-cron/node-cron/issues/557">#557</a>)</li>
<li><strong>Extended day-of-week tokens</strong>: <code>&lt;weekday&gt;#&lt;nth&gt;</code> (nth weekday of the month, e.g.
<code>1#1</code> for the first Monday) and <code>&lt;weekday&gt;L</code> (last weekday of the month, e.g. <code>5L</code>
for the last Friday). (<a href="https://redirect.github.com/node-cron/node-cron/issues/560">#560</a>)</li>
</ul>
<h3>Performance</h3>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href="https://github.com/node-cron/node-cron/commit/0be2ca03ffebc79fa823081b8a44bff6f731a583"><code>0be2ca0</code></a> chore(main): release 4.6.0 (<a href="https://redirect.github.com/node-cron/node-cron/issues/576">#576</a>)</li>
<li><a href="https://github.com/node-cron/node-cron/commit/813ab08701e8a45836a0ce9be9bd32011aade29e"><code>813ab08</code></a> docs: note bundlers must keep node-cron external for background tasks (<a href="https://redirect.github.com/node-cron/node-cron/issues/610">#610</a>)</li>
<li><a href="https://github.com/node-cron/node-cron/commit/ee9d294e71e526edffa2a2f902cad71e1f570d44"><code>ee9d294</code></a> fix: CommonJS type resolution (<a href="https://redirect.github.com/node-cron/node-cron/issues/608">#608</a>)</li>
<li><a href="https://github.com/node-cron/node-cron/commit/0f039a94dcaf6221ea406221b1e7c5eb34a47c4b"><code>0f039a9</code></a> fix: correlate execute() by id, isolate event hooks, and stop counting manual...</li>
<li><a href="https://github.com/node-cron/node-cron/commit/8cf41c436f5b544e32908d6e73b2679e973074e3"><code>8cf41c4</code></a> fix: validate() consistency and multi-asterisk expansion (<a href="https://redirect.github.com/node-cron/node-cron/issues/606">#606</a>)</li>
<li><a href="https://github.com/node-cron/node-cron/commit/446f03ae8f366683c43b186b93bcba5091a00042"><code>446f03a</code></a> fix: make concurrent background start() await the daemon and time out coordin...</li>
<li><a href="https://github.com/node-cron/node-cron/commit/88647a68ff6c1e651f0666ee7c45eeff7dcf697e"><code>88647a6</code></a> docs: note DST fall-back behavior for sub-hourly schedules and the UTC workar...</li>
<li><a href="https://github.com/node-cron/node-cron/commit/196e6cd41ac32ab9df56668ac70e1b5232384bb8"><code>196e6cd</code></a> fix: validate the cron expression when scheduling a task (<a href="https://redirect.github.com/node-cron/node-cron/issues/603">#603</a>)</li>
<li><a href="https://github.com/node-cron/node-cron/commit/7bd91d62d1472d52f9adbddfddc0c47458623080"><code>7bd91d6</code></a> feat: emit task:failed when a background daemon exits unexpectedly (<a href="https://redirect.github.com/node-cron/node-cron/issues/601">#601</a>)</li>
<li><a href="https://github.com/node-cron/node-cron/commit/a10ae53626f1cc6e426e23266423f5e334a6871e"><code>a10ae53</code></a> fix: expand inverted ranges with wrap-around instead of silently swapping (<a href="https://redirect.github.com/node-cron/node-cron/issues/602">#602</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/node-cron/node-cron/compare/v4.2.1...v4.6.0">compare view</a></li>
</ul>
</details>
<details>
<summary>Maintainer changes</summary>
<p>This version was pushed to npm by <a href="https://www.npmjs.com/~GitHub%20Actions">GitHub Actions</a>, a new releaser for node-cron since your current version.</p>
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
