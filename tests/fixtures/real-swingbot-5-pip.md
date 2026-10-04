Bumps the python-minor-patch group with 3 updates: [numpy](https://github.com/numpy/numpy), [pytest](https://github.com/pytest-dev/pytest) and [ruff](https://github.com/astral-sh/ruff).

Updates `numpy` from 2.3.4 to 2.4.6
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/numpy/numpy/releases">numpy's releases</a>.</em></p>
<blockquote>
<h2>v2.4.6 (May 18, 2026)</h2>
<h1>NumPy 2.4.6 Release Notes</h1>
<p>NumPy 2.4.6 is a quick release that fixes a regression discovered in the 2.4.5
release.</p>
<p>This release supports Python versions 3.11-3.14</p>
<h2>Contributors</h2>
<p>A total of 4 people contributed to this release. People with a &quot;+&quot; by their
names contributed a patch for the first time.</p>
<ul>
<li>!EarlMilktea</li>
<li>Charles Harris</li>
<li>Sebastian Berg</li>
<li>Warren Weckesser</li>
</ul>
<h2>Pull requests merged</h2>
<p>A total of 4 pull requests were merged for this release.</p>
<ul>
<li><a href="https://redirect.github.com/numpy/numpy/pull/31444">#31444</a>: MAINT: Prepare 2.4.x for further development</li>
<li><a href="https://redirect.github.com/numpy/numpy/pull/31453">#31453</a>: BUG: Fix regression in <code>arr.conj()</code></li>
<li><a href="https://redirect.github.com/numpy/numpy/pull/31459">#31459</a>: BUG: <code>np.linalg.svd(..., hermitian=True)</code> returns non-unitary...</li>
<li><a href="https://redirect.github.com/numpy/numpy/pull/31460">#31460</a>: BUG: Don't call INCREF/DECREF on descr in NpyStringAcquireAllocator...</li>
</ul>
<h2>v2.4.5 (May 15, 2026)</h2>
<h1>NumPy 2.4.5 Release Notes</h1>
<p>NumPy 2.4.5 is a patch release that fixes bugs discovered after the 2.4.4
release, has some typing improvements, and maintains infrastructure.</p>
<p>This release supports Python versions 3.11-3.14</p>
<h2>Contributors</h2>
<p>A total of 17 people contributed to this release. People with a &quot;+&quot; by their
names contributed a patch for the first time.</p>
<ul>
<li>Aleksei Nikiforov</li>
<li>Anarion Zuo +</li>
<li>Ankit Ahlawat</li>
<li>Breno Favaretto +</li>
<li>Charles Harris</li>
<li>Igor Krivenko +</li>
<li>Ijtihed Kilani +</li>
<li>Joren Hammudoglu</li>
<li>Maarten Baert +</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/numpy/numpy/blob/main/doc/RELEASE_WALKTHROUGH.rst">numpy's changelog</a>.</em></p>
<blockquote>
<p>This is a walkthrough of the NumPy 2.4.0 release on Linux, which will be the
first feature release using the <code>numpy/numpy-release &lt;https://github.com/numpy/numpy-release&gt;</code>__ repository.</p>
<p>The commands can be copied into the command line, but be sure to replace 2.4.0
with the correct version. This should be read together with the
:ref:<code>general release guide &lt;prepare_release&gt;</code>.</p>
<h1>Facility preparation</h1>
<p>Before beginning to make a release, use the <code>requirements/*_requirements.txt</code> files to
ensure that you have the needed software. Most software can be installed with
pip, but some will require apt-get, dnf, or whatever your system uses for
software. You will also need a GitHub personal access token (PAT) to push the
documentation. There are a few ways to streamline things:</p>
<ul>
<li>Git can be set up to use a keyring to store your GitHub personal access token.
Search online for the details.</li>
</ul>
<h1>Prior to release</h1>
<h2>Add/drop Python versions</h2>
<p>When adding or dropping Python versions, multiple config and CI files need to
be edited in addition to changing the minimum version in <code>pyproject.toml</code>.
Make these changes in an ordinary PR against main and backport if necessary.
We currently release wheels for new Python versions after the first Python RC
once manylinux and cibuildwheel support that new Python version.</p>
<h2>Backport pull requests</h2>
<p>Changes that have been marked for this release must be backported to the
maintenance/2.4.x branch.</p>
<h2>Update 2.4.0 milestones</h2>
<p>Look at the issues/prs with 2.4.0 milestones and either push them off to a
later version, or maybe remove the milestone. You may need to add a milestone.</p>
<h2>Check the numpy-release repo</h2>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href="https://github.com/numpy/numpy/commit/b832a09cf2a169c833dd2371e7c07aa00b293242"><code>b832a09</code></a> Merge pull request <a href="https://redirect.github.com/numpy/numpy/issues/31462">#31462</a> from charris/prepare-2.4.6</li>
<li><a href="https://github.com/numpy/numpy/commit/57cc147d2ceacffc6534642bfbdebb3a80428e1e"><code>57cc147</code></a> REL: Prepare for the NumPy 2.4.6 release</li>
<li><a href="https://github.com/numpy/numpy/commit/0c72b0b53b6b83c004e434b2c7855e73c000d21e"><code>0c72b0b</code></a> Merge pull request <a href="https://redirect.github.com/numpy/numpy/issues/31459">#31459</a> from charris/backport-31347</li>
<li><a href="https://github.com/numpy/numpy/commit/9778d26e0475d381ccb7817c3b4dd8cacef2b9eb"><code>9778d26</code></a> BUG: core: Don't call INCREF/DECREF on descr in NpyStringAcquireAllocator. (#...</li>
<li><a href="https://github.com/numpy/numpy/commit/e0e38767d5d0f848ab44befeedcad71e8ef589c7"><code>e0e3876</code></a> BUG: core: Don't call INCREF/DECREF on descr in NpyStringAcquireAllocator. (#...</li>
<li><a href="https://github.com/numpy/numpy/commit/d1bffeb9ec4ec0bf029c94ea35abffa92d5c30f2"><code>d1bffeb</code></a> BUG: <code>np.linalg.svd(..., hermitian=True)</code> returns non-unitary <code>vh</code> (<a href="https://redirect.github.com/numpy/numpy/issues/31347">#31347</a>)</li>
<li><a href="https://github.com/numpy/numpy/commit/8d8d7e5a14a1da0bfb0faf609a7a7610c431e6e9"><code>8d8d7e5</code></a> Merge pull request <a href="https://redirect.github.com/numpy/numpy/issues/31453">#31453</a> from seberg/issue-31452</li>
<li><a href="https://github.com/numpy/numpy/commit/bddaab7ace45f90148d8f2bb6e67daab2d45ec76"><code>bddaab7</code></a> BUG: Fix regression in <code>arr.conj()</code></li>
<li><a href="https://github.com/numpy/numpy/commit/37a1ecca8dff09b2c579a991194ac55b9971f3a7"><code>37a1ecc</code></a> Merge pull request <a href="https://redirect.github.com/numpy/numpy/issues/31444">#31444</a> from charris/begin-2.4.6</li>
<li><a href="https://github.com/numpy/numpy/commit/3c0e043217a759a8a948ade158fec14348c3b459"><code>3c0e043</code></a> MAINT: Prepare 2.4.x for further development</li>
<li>Additional commits viewable in <a href="https://github.com/numpy/numpy/compare/v2.3.4...v2.4.6">compare view</a></li>
</ul>
</details>
<br />

Updates `pytest` from 9.0.3 to 9.1.1
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/pytest-dev/pytest/releases">pytest's releases</a>.</em></p>
<blockquote>
<h2>9.1.1</h2>
<h1>pytest 9.1.1 (2026-06-19)</h1>
<h2>Bug fixes</h2>
<ul>
<li><a href="https://redirect.github.com/pytest-dev/pytest/issues/14220">#14220</a>: Fixed a logic bug in <code>pytest.RaisesGroup</code> which would might cause it to display incorrect &quot;It matches <!-- raw HTML omitted -->FooError()<!-- raw HTML omitted --> which was paired with <!-- raw HTML omitted -->BarError<!-- raw HTML omitted -->&quot; messages.</li>
<li><a href="https://redirect.github.com/pytest-dev/pytest/issues/14591">#14591</a>: Fixed a regression in pytest 9.1.0 which caused overriding a parametrized fixture with an indirect <!-- raw HTML omitted --><a href="https://github.com/pytest"><code>@​pytest</code></a>.mark.parametrize<!-- raw HTML omitted --> to fail with &quot;duplicate parametrization of '&lt;fixture name&gt;'&quot;.</li>
<li><a href="https://redirect.github.com/pytest-dev/pytest/issues/14606">#14606</a>: Fixed <code>list-item</code> typing errors from mypy in <code>@pytest.mark.parametrize &lt;pytest.mark.parametrize ref&gt;</code> <code>argvalues</code> parameter.</li>
<li><a href="https://redirect.github.com/pytest-dev/pytest/issues/14608">#14608</a>: Fixed a regression in pytest 9.1.0 where <code>conftest.py</code> files located in <code>&lt;invocation dir&gt;/test*</code> were no longer loaded as initial conftests when invoked without arguments.
This could cause certain hooks (like <code>pytest_addoption</code>) in these files to not fire.</li>
</ul>
<h2>9.1.0</h2>
<h1>pytest 9.1.0 (2026-06-13)</h1>
<h2>Removals and backward incompatible breaking changes</h2>
<ul>
<li>
<p><a href="https://redirect.github.com/pytest-dev/pytest/issues/14533">#14533</a>: When using <code>--doctest-modules</code>, autouse fixtures with <code>module</code>, <code>package</code> or <code>session</code> scope that are defined inline in Python test modules (not plugins or conftests) will now possibly execute twice.</p>
<p>If this is undesirable, move the fixture definition to a <code>conftest.py</code> file if possible.</p>
<p>Technical explanation for those interested:
When using <!-- raw HTML omitted -->--doctest-modules<!-- raw HTML omitted -->, pytest possibly collects Python modules twice, once as <code>pytest.Module</code> and once as a <code>DoctestModule</code> (depending on the configuration).
Due to improvements in pytest's fixture implementation, if e.g. the <code>DoctestModule</code> collects a fixture, it is now visible to it only, and not to the <code>Module</code>.
This means that both need to register the fixtures independently.</p>
</li>
</ul>
<h2>Deprecations (removal in next major release)</h2>
<ul>
<li>
<p><a href="https://redirect.github.com/pytest-dev/pytest/issues/10819">#10819</a>: Added a deprecation warning for class-scoped fixtures defined as instance methods (without <code>@classmethod</code>). Such fixtures set attributes on a different instance than the test methods use, leading to unexpected behavior. Use <code>@classmethod</code> decorator instead -- by <code>yastcher</code>.</p>
<p>See <code>10819</code> and <code>14011</code>.</p>
</li>
<li>
<p><a href="https://redirect.github.com/pytest-dev/pytest/issues/12882">#12882</a>: Calling <code>request.getfixturevalue() &lt;pytest.FixtureRequest.getfixturevalue&gt;</code> during teardown to request a fixture that was not already requested is now deprecated and will become an error in pytest 10.</p>
<p>See <code>dynamic-fixture-request-during-teardown</code> for details.</p>
</li>
<li>
<p><a href="https://redirect.github.com/pytest-dev/pytest/issues/13409">#13409</a>: Using non-<code>~collections.abc.Collection</code> iterables (such as generators, iterators, or custom iterable objects) for the <code>argvalues</code> parameter in <code>@pytest.mark.parametrize &lt;pytest.mark.parametrize ref&gt;</code> and <code>metafunc.parametrize &lt;pytest.Metafunc.parametrize&gt;</code> is now deprecated.</p>
<p>These iterables get exhausted after the first iteration,
leading to tests getting unexpectedly skipped in cases such as running <code>pytest.main()</code> multiple times,
using class-level parametrize decorators,
or collecting tests multiple times.</p>
<p>See <code>parametrize-iterators</code> for details and suggestions.</p>
</li>
<li>
<p><a href="https://redirect.github.com/pytest-dev/pytest/issues/13946">#13946</a>: The private <code>config.inicfg</code> attribute is now deprecated.
Use <code>config.getini() &lt;pytest.Config.getini&gt;</code> to access configuration values instead.</p>
<p>See <code>config-inicfg</code> for more details.</p>
</li>
<li>
<p><a href="https://redirect.github.com/pytest-dev/pytest/issues/14004">#14004</a>: Passing <code>baseid</code> to <code>~pytest.FixtureDef</code> or <code>nodeid</code> strings to fixture registration APIs is now deprecated. These are internal pytest APIs that are used by some plugins.</p>
</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href="https://github.com/pytest-dev/pytest/commit/cf470ec0bf7eb89cd97dd56df4859eae5db46447"><code>cf470ec</code></a> Prepare release version 9.1.1</li>
<li><a href="https://github.com/pytest-dev/pytest/commit/e0c8ce6cc5db1f08363be6f152c32e6838df2690"><code>e0c8ce6</code></a> Merge pull request <a href="https://redirect.github.com/pytest-dev/pytest/issues/14625">#14625</a> from pytest-dev/patchback/backports/9.1.x/a07c31a97...</li>
<li><a href="https://github.com/pytest-dev/pytest/commit/1b82d1694fce22385ee7a4287917fbafbaf2e757"><code>1b82d16</code></a> Merge pull request <a href="https://redirect.github.com/pytest-dev/pytest/issues/14624">#14624</a> from pytest-dev/patchback/backports/9.1.x/b375b79ec...</li>
<li><a href="https://github.com/pytest-dev/pytest/commit/501c4bc784da3b08bfcaa64858eba5d15dc59e53"><code>501c4bc</code></a> Merge pull request <a href="https://redirect.github.com/pytest-dev/pytest/issues/14596">#14596</a> from bluetech/doc-classmethod</li>
<li><a href="https://github.com/pytest-dev/pytest/commit/b61f588e36e9377c3d1d3f06bece1da0fc31d9ca"><code>b61f588</code></a> Merge pull request <a href="https://redirect.github.com/pytest-dev/pytest/issues/14622">#14622</a> from chrisburr/fix-14608-initial-conftest-test-subdir</li>
<li><a href="https://github.com/pytest-dev/pytest/commit/9a567e009f4d2da3ce1721c6db3109cb5744d40a"><code>9a567e0</code></a> [automated] Update plugin list (<a href="https://redirect.github.com/pytest-dev/pytest/issues/14617">#14617</a>) (<a href="https://redirect.github.com/pytest-dev/pytest/issues/14618">#14618</a>)</li>
<li><a href="https://github.com/pytest-dev/pytest/commit/ef8b2993e5b48639e4a3d97d0525df9760781384"><code>ef8b299</code></a> Merge pull request <a href="https://redirect.github.com/pytest-dev/pytest/issues/14620">#14620</a> from pytest-dev/patchback/backports/9.1.x/680f9f3ed...</li>
<li><a href="https://github.com/pytest-dev/pytest/commit/66abd0784d4cb7c1ba44ab9a8896506cd4985acc"><code>66abd07</code></a> Merge pull request <a href="https://redirect.github.com/pytest-dev/pytest/issues/14220">#14220</a> from bysiber/fix-stale-iexp-raisesgroup</li>
<li><a href="https://github.com/pytest-dev/pytest/commit/79fbf93b666cac5f27c9dad047943d47b766c8d5"><code>79fbf93</code></a> Merge pull request <a href="https://redirect.github.com/pytest-dev/pytest/issues/14612">#14612</a> from pytest-dev/patchback/backports/9.1.x/974ed48b6...</li>
<li><a href="https://github.com/pytest-dev/pytest/commit/0d312eb876177e9f1c04262b54060a41034ebf5c"><code>0d312eb</code></a> Merge pull request <a href="https://redirect.github.com/pytest-dev/pytest/issues/14611">#14611</a> from bluetech/parametrize-argvalues-typing</li>
<li>Additional commits viewable in <a href="https://github.com/pytest-dev/pytest/compare/9.0.3...9.1.1">compare view</a></li>
</ul>
</details>
<br />

Updates `ruff` from 0.14.1 to 0.16.9
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/astral-sh/ruff/releases">ruff's releases</a>.</em></p>
<blockquote>
<h2>0.16.9</h2>
<h2>Release Notes</h2>
<p>Released on 2026-09-24.</p>
<h3>Preview features</h3>
<ul>
<li>[<code>ruff</code>] Avoid false positives for overloaded division (<code>RUF069</code>) (<a href="https://redirect.github.com/astral-sh/ruff/pull/28309">#28309</a>)</li>
</ul>
<h3>Bug fixes</h3>
<ul>
<li>[<code>flake8-bugbear</code>] Avoid false positives for calls with keyword arguments (<code>B009</code>, <code>B010</code>, <code>B043</code>) (<a href="https://redirect.github.com/astral-sh/ruff/pull/28776">#28776</a>)</li>
<li>[<code>flake8-tidy-imports</code>] Allow lazy imports to be used in deferred annotations (<code>TID255</code>) (<a href="https://redirect.github.com/astral-sh/ruff/pull/28767">#28767</a>)</li>
</ul>
<h3>Rule changes</h3>
<ul>
<li>Update LibCST-based fixes for Python 3.15 (<a href="https://redirect.github.com/astral-sh/ruff/pull/28616">#28616</a>)</li>
<li>[<code>flake8-pyi</code>] Mention stubs in the diagnostic message (<code>PYI002</code>) (<a href="https://redirect.github.com/astral-sh/ruff/pull/28542">#28542</a>)</li>
</ul>
<h3>Documentation</h3>
<ul>
<li>Fix horizontal overflow on the rules documentation page (<a href="https://redirect.github.com/astral-sh/ruff/pull/28699">#28699</a>)</li>
<li>Update rules table with category information (<a href="https://redirect.github.com/astral-sh/ruff/pull/28651">#28651</a>)</li>
<li>[<code>flake8-annotations</code>] Clarify that <code>ANN401</code> checks return types in addition to arguments (<a href="https://redirect.github.com/astral-sh/ruff/pull/28334">#28334</a>)</li>
<li>[<code>flake8-bugbear</code>] Document type-checker interaction (<code>B010</code>) (<a href="https://redirect.github.com/astral-sh/ruff/pull/28509">#28509</a>)</li>
<li>[<code>flake8-comprehensions</code>] Document <code>map</code>/generator exception behavior (<code>C417</code>) (<a href="https://redirect.github.com/astral-sh/ruff/pull/27794">#27794</a>)</li>
<li>[<code>ruff</code>] Mention related isort settings (<code>RUF022</code>) (<a href="https://redirect.github.com/astral-sh/ruff/pull/28719">#28719</a>)</li>
</ul>
<h3>Contributors</h3>
<ul>
<li><a href="https://github.com/qinpei-dev"><code>@​qinpei-dev</code></a></li>
<li><a href="https://github.com/sanjayrohith"><code>@​sanjayrohith</code></a></li>
<li><a href="https://github.com/ntBre"><code>@​ntBre</code></a></li>
<li><a href="https://github.com/webdevsamran"><code>@​webdevsamran</code></a></li>
<li><a href="https://github.com/zaniebot"><code>@​zaniebot</code></a></li>
<li><a href="https://github.com/ewdurbin"><code>@​ewdurbin</code></a></li>
<li><a href="https://github.com/MichaReiser"><code>@​MichaReiser</code></a></li>
<li><a href="https://github.com/spaceone"><code>@​spaceone</code></a></li>
<li><a href="https://github.com/IbrahimKhan12"><code>@​IbrahimKhan12</code></a></li>
<li><a href="https://github.com/devtechedge"><code>@​devtechedge</code></a></li>
<li><a href="https://github.com/GruffElixir"><code>@​GruffElixir</code></a></li>
</ul>
<h2>Install ruff 0.16.9</h2>
<h3>Install prebuilt binaries via shell script</h3>
<pre lang="sh"><code>curl --proto '=https' --tlsv1.2 -LsSf https://releases.astral.sh/github/ruff/releases/download/0.16.9/ruff-installer.sh | sh
</code></pre>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/astral-sh/ruff/blob/main/CHANGELOG.md">ruff's changelog</a>.</em></p>
<blockquote>
<h2>0.16.9</h2>
<p>Released on 2026-09-24.</p>
<h3>Preview features</h3>
<ul>
<li>[<code>ruff</code>] Avoid false positives for overloaded division (<code>RUF069</code>) (<a href="https://redirect.github.com/astral-sh/ruff/pull/28309">#28309</a>)</li>
</ul>
<h3>Bug fixes</h3>
<ul>
<li>[<code>flake8-bugbear</code>] Avoid false positives for calls with keyword arguments (<code>B009</code>, <code>B010</code>, <code>B043</code>) (<a href="https://redirect.github.com/astral-sh/ruff/pull/28776">#28776</a>)</li>
<li>[<code>flake8-tidy-imports</code>] Allow lazy imports to be used in deferred annotations (<code>TID255</code>) (<a href="https://redirect.github.com/astral-sh/ruff/pull/28767">#28767</a>)</li>
</ul>
<h3>Rule changes</h3>
<ul>
<li>Update LibCST-based fixes for Python 3.15 (<a href="https://redirect.github.com/astral-sh/ruff/pull/28616">#28616</a>)</li>
<li>[<code>flake8-pyi</code>] Mention stubs in the diagnostic message (<code>PYI002</code>) (<a href="https://redirect.github.com/astral-sh/ruff/pull/28542">#28542</a>)</li>
</ul>
<h3>Documentation</h3>
<ul>
<li>Fix horizontal overflow on the rules documentation page (<a href="https://redirect.github.com/astral-sh/ruff/pull/28699">#28699</a>)</li>
<li>Update rules table with category information (<a href="https://redirect.github.com/astral-sh/ruff/pull/28651">#28651</a>)</li>
<li>[<code>flake8-annotations</code>] Clarify that <code>ANN401</code> checks return types in addition to arguments (<a href="https://redirect.github.com/astral-sh/ruff/pull/28334">#28334</a>)</li>
<li>[<code>flake8-bugbear</code>] Document type-checker interaction (<code>B010</code>) (<a href="https://redirect.github.com/astral-sh/ruff/pull/28509">#28509</a>)</li>
<li>[<code>flake8-comprehensions</code>] Document <code>map</code>/generator exception behavior (<code>C417</code>) (<a href="https://redirect.github.com/astral-sh/ruff/pull/27794">#27794</a>)</li>
<li>[<code>ruff</code>] Mention related isort settings (<code>RUF022</code>) (<a href="https://redirect.github.com/astral-sh/ruff/pull/28719">#28719</a>)</li>
</ul>
<h3>Contributors</h3>
<ul>
<li><a href="https://github.com/qinpei-dev"><code>@​qinpei-dev</code></a></li>
<li><a href="https://github.com/sanjayrohith"><code>@​sanjayrohith</code></a></li>
<li><a href="https://github.com/ntBre"><code>@​ntBre</code></a></li>
<li><a href="https://github.com/webdevsamran"><code>@​webdevsamran</code></a></li>
<li><a href="https://github.com/zaniebot"><code>@​zaniebot</code></a></li>
<li><a href="https://github.com/ewdurbin"><code>@​ewdurbin</code></a></li>
<li><a href="https://github.com/MichaReiser"><code>@​MichaReiser</code></a></li>
<li><a href="https://github.com/spaceone"><code>@​spaceone</code></a></li>
<li><a href="https://github.com/IbrahimKhan12"><code>@​IbrahimKhan12</code></a></li>
<li><a href="https://github.com/devtechedge"><code>@​devtechedge</code></a></li>
<li><a href="https://github.com/GruffElixir"><code>@​GruffElixir</code></a></li>
</ul>
<h2>0.16.8</h2>
<p>Released on 2026-09-16.</p>
<h3>Bug fixes</h3>
<ul>
<li>Visit functional <code>TypedDict</code> keyword arguments correctly (<a href="https://redirect.github.com/astral-sh/ruff/pull/28584">#28584</a>)</li>
<li>[<code>flake8-simplify</code>] Detect nested <code>async with</code> under sync parent (<code>SIM117</code>) (<a href="https://redirect.github.com/astral-sh/ruff/pull/27821">#27821</a>)</li>
<li>[<code>flake8-simplify</code>] Preserve operand order in <code>SIM109</code> fix (<a href="https://redirect.github.com/astral-sh/ruff/pull/27824">#27824</a>)</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href="https://github.com/astral-sh/ruff/commit/0be08a206f9c3180afd3e93bcc792ed5cb1f4db1"><code>0be08a2</code></a> Bump version to 0.16.9 (<a href="https://redirect.github.com/astral-sh/ruff/issues/28882">#28882</a>)</li>
<li><a href="https://github.com/astral-sh/ruff/commit/b4920b72b354e7c715ab861ae23458874683bb02"><code>b4920b7</code></a> Rename <code>ruff_cli</code> to <code>ruff_command_line</code> (<a href="https://redirect.github.com/astral-sh/ruff/issues/28881">#28881</a>)</li>
<li><a href="https://github.com/astral-sh/ruff/commit/47c751b95908a4d1f95f9ef8723036aae9da0b18"><code>47c751b</code></a> Update dependency astral-sh/uv to v0.12.18 (<a href="https://redirect.github.com/astral-sh/ruff/issues/28880">#28880</a>)</li>
<li><a href="https://github.com/astral-sh/ruff/commit/8c244e56a1aeac31c26d2371ef26588e0632235c"><code>8c244e5</code></a> [<code>flake8-comprehensions</code>] Document <code>map</code>/generator exception behavior (<code>C417</code>...</li>
<li><a href="https://github.com/astral-sh/ruff/commit/5edf5a1d0a84663079e46983216059f06acea87d"><code>5edf5a1</code></a> Use <code>target</code> form in <code>rooster.version_files</code> (<a href="https://redirect.github.com/astral-sh/ruff/issues/28876">#28876</a>)</li>
<li><a href="https://github.com/astral-sh/ruff/commit/915bb2b4bf9ae7eee47cf55646bbfebae254a23b"><code>915bb2b</code></a> [ty] Prefer existing @ paths over response files in Ruff and ty (<a href="https://redirect.github.com/astral-sh/ruff/issues/28877">#28877</a>)</li>
<li><a href="https://github.com/astral-sh/ruff/commit/4710e1aa962b13720cf64aa84eb279c5333896d7"><code>4710e1a</code></a> ci(github): update version number in placeholder of issue template (<a href="https://redirect.github.com/astral-sh/ruff/issues/28871">#28871</a>)</li>
<li><a href="https://github.com/astral-sh/ruff/commit/eedfc62a75bf1ba86d48959b00eea75ae87eadca"><code>eedfc62</code></a> [ty] Propagate outer type context through cast calls (<a href="https://redirect.github.com/astral-sh/ruff/issues/28855">#28855</a>)</li>
<li><a href="https://github.com/astral-sh/ruff/commit/ceaa6a00830e1e350b8a23977a1a10ac467920a1"><code>ceaa6a0</code></a> [ty] Contain rendered code within Markdown fences (<a href="https://redirect.github.com/astral-sh/ruff/issues/28869">#28869</a>)</li>
<li><a href="https://github.com/astral-sh/ruff/commit/dba0f30615424b94f94a174bba6ce6cce4bf11ff"><code>dba0f30</code></a> authorize ruff-pre-commit dispatch via OIDC (<a href="https://redirect.github.com/astral-sh/ruff/issues/28867">#28867</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/astral-sh/ruff/compare/0.14.1...0.16.9">compare view</a></li>
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
