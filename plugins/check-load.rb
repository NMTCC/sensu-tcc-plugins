




<!DOCTYPE html>
<html>
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>sensu-community-plugins/plugins/system/check-load.rb at 98dc9ea734b2be19e80433103db6ce30e5914a2c · sensu/sensu-community-plugins · GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png" />
    <meta property="fb:app_id" content="1401488693436528"/>

      <meta content="@github" name="twitter:site" /><meta content="summary" name="twitter:card" /><meta content="sensu/sensu-community-plugins" name="twitter:title" /><meta content="sensu-community-plugins - Sensu community plugins &amp;amp; handlers, sharing is good." name="twitter:description" /><meta content="https://0.gravatar.com/avatar/f944437e121d4e1efc45dfaec2651550?d=https%3A%2F%2Fidenticons.github.com%2Fab948e17c6dd9cabb73e8d2d2f0019a0.png&amp;r=x&amp;s=400" name="twitter:image:src" />
<meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="https://0.gravatar.com/avatar/f944437e121d4e1efc45dfaec2651550?d=https%3A%2F%2Fidenticons.github.com%2Fab948e17c6dd9cabb73e8d2d2f0019a0.png&amp;r=x&amp;s=400" property="og:image" /><meta content="sensu/sensu-community-plugins" property="og:title" /><meta content="https://github.com/sensu/sensu-community-plugins" property="og:url" /><meta content="sensu-community-plugins - Sensu community plugins &amp; handlers, sharing is good." property="og:description" />

    <meta name="hostname" content="github-fe131-cp1-prd.iad.github.net">
    <meta name="ruby" content="ruby 2.1.0p0-github-tcmalloc (60139581e1) [x86_64-linux]">
    <link rel="assets" href="https://github.global.ssl.fastly.net/">
    <link rel="conduit-xhr" href="https://ghconduit.com:25035/">
    <link rel="xhr-socket" href="/_sockets" />
    


    <meta name="msapplication-TileImage" content="/windows-tile.png" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="selected-link" value="repo_source" data-pjax-transient />
    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="collector-cdn.github.com" name="octolytics-script-host" /><meta content="github" name="octolytics-app-id" /><meta content="818A0386:3D39:214661A:52E97F38" name="octolytics-dimension-request_id" />
    

    
    
    <link rel="icon" type="image/x-icon" href="/favicon.ico" />

    <meta content="authenticity_token" name="csrf-param" />
<meta content="p8/udibA1awVo5BG3jVQ1tcgUlzEd0Sd5jE8c65WJGs=" name="csrf-token" />

    <link href="https://github.global.ssl.fastly.net/assets/github-b15642b174af75fdb8a21ac9afd3d0f515222789.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://github.global.ssl.fastly.net/assets/github2-0940cdb67a2fa5e0022b98d66e0d0ff802083d56.css" media="all" rel="stylesheet" type="text/css" />
    


      <script src="https://github.global.ssl.fastly.net/assets/frameworks-3e59bf2ccf0be318d5d920c2ab0bf1ab4cb3a96b.js" type="text/javascript"></script>
      <script async="async" defer="defer" src="https://github.global.ssl.fastly.net/assets/github-8ec2f887be193ff878e68d7c9c5ef053f2cd6187.js" type="text/javascript"></script>
      
      <meta http-equiv="x-pjax-version" content="08603cdf34a89b16f5078e39afa7b331">

        <link data-pjax-transient rel='permalink' href='/sensu/sensu-community-plugins/blob/98dc9ea734b2be19e80433103db6ce30e5914a2c/plugins/system/check-load.rb'>

  <meta name="description" content="sensu-community-plugins - Sensu community plugins &amp; handlers, sharing is good." />

  <meta content="1648901" name="octolytics-dimension-user_id" /><meta content="sensu" name="octolytics-dimension-user_login" /><meta content="2990280" name="octolytics-dimension-repository_id" /><meta content="sensu/sensu-community-plugins" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="2990280" name="octolytics-dimension-repository_network_root_id" /><meta content="sensu/sensu-community-plugins" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/sensu/sensu-community-plugins/commits/98dc9ea734b2be19e80433103db6ce30e5914a2c.atom" rel="alternate" title="Recent Commits to sensu-community-plugins:98dc9ea734b2be19e80433103db6ce30e5914a2c" type="application/atom+xml" />

  </head>


  <body class="logged_out  env-production linux vis-public page-blob">
    <div class="wrapper">
      
      
      
      


      
      <div class="header header-logged-out">
  <div class="container clearfix">

    <a class="header-logo-wordmark" href="https://github.com/">
      <span class="mega-octicon octicon-logo-github"></span>
    </a>

    <div class="header-actions">
        <a class="button primary" href="/join">Sign up</a>
      <a class="button signin" href="/login?return_to=%2Fsensu%2Fsensu-community-plugins%2Fblob%2F98dc9ea734b2be19e80433103db6ce30e5914a2c%2Fplugins%2Fsystem%2Fcheck-load.rb">Sign in</a>
    </div>

    <div class="command-bar js-command-bar  in-repository">

      <ul class="top-nav">
          <li class="explore"><a href="/explore">Explore</a></li>
        <li class="features"><a href="/features">Features</a></li>
          <li class="enterprise"><a href="https://enterprise.github.com/">Enterprise</a></li>
          <li class="blog"><a href="/blog">Blog</a></li>
      </ul>
        <form accept-charset="UTF-8" action="/search" class="command-bar-form" id="top_search_form" method="get">

<input type="text" data-hotkey="/ s" name="q" id="js-command-bar-field" placeholder="Search or type a command" tabindex="1" autocapitalize="off"
    
    
      data-repo="sensu/sensu-community-plugins"
      data-branch="98dc9ea734b2be19e80433103db6ce30e5914a2c"
      data-sha="ab91734a8efbe41cfb6bd964452e8e255f19930b"
  >

    <input type="hidden" name="nwo" value="sensu/sensu-community-plugins" />

    <div class="select-menu js-menu-container js-select-menu search-context-select-menu">
      <span class="minibutton select-menu-button js-menu-target">
        <span class="js-select-button">This repository</span>
      </span>

      <div class="select-menu-modal-holder js-menu-content js-navigation-container">
        <div class="select-menu-modal">

          <div class="select-menu-item js-navigation-item js-this-repository-navigation-item selected">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" class="js-search-this-repository" name="search_target" value="repository" checked="checked" />
            <div class="select-menu-item-text js-select-button-text">This repository</div>
          </div> <!-- /.select-menu-item -->

          <div class="select-menu-item js-navigation-item js-all-repositories-navigation-item">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" name="search_target" value="global" />
            <div class="select-menu-item-text js-select-button-text">All repositories</div>
          </div> <!-- /.select-menu-item -->

        </div>
      </div>
    </div>

  <span class="octicon help tooltipped downwards" title="Show command bar help">
    <span class="octicon octicon-question"></span>
  </span>


  <input type="hidden" name="ref" value="cmdform">

</form>
    </div>

  </div>
</div>


      


          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">
        

<ul class="pagehead-actions">


  <li>
    <a href="/login?return_to=%2Fsensu%2Fsensu-community-plugins"
    class="minibutton with-count js-toggler-target star-button tooltipped upwards"
    title="You must be signed in to use this feature" rel="nofollow">
    <span class="octicon octicon-star"></span>Star
  </a>

    <a class="social-count js-social-count" href="/sensu/sensu-community-plugins/stargazers">
      154
    </a>

  </li>

    <li>
      <a href="/login?return_to=%2Fsensu%2Fsensu-community-plugins"
        class="minibutton with-count js-toggler-target fork-button tooltipped upwards"
        title="You must be signed in to fork a repository" rel="nofollow">
        <span class="octicon octicon-git-branch"></span>Fork
      </a>
      <a href="/sensu/sensu-community-plugins/network" class="social-count">
        242
      </a>
    </li>
</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="repo-label"><span>public</span></span>
          <span class="mega-octicon octicon-repo"></span>
          <span class="author">
            <a href="/sensu" class="url fn" itemprop="url" rel="author"><span itemprop="title">sensu</span></a>
          </span>
          <span class="repohead-name-divider">/</span>
          <strong><a href="/sensu/sensu-community-plugins" class="js-current-repository js-repo-home-link">sensu-community-plugins</a></strong>

          <span class="page-context-loader">
            <img alt="Octocat-spinner-32" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
          </span>

        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">
      

      <div class="repository-with-sidebar repo-container  new-discussion-timeline js-new-discussion-timeline">

        <div class="repository-sidebar">
            

<div class="sunken-menu vertical-right repo-nav js-repo-nav js-repository-container-pjax js-octicon-loaders">
  <div class="sunken-menu-contents">
    <ul class="sunken-menu-group">
      <li class="tooltipped leftwards" title="Code">
        <a href="/sensu/sensu-community-plugins" aria-label="Code" class="selected js-selected-navigation-item sunken-menu-item" data-gotokey="c" data-pjax="true" data-selected-links="repo_source repo_downloads repo_commits repo_tags repo_branches /sensu/sensu-community-plugins">
          <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

        <li class="tooltipped leftwards" title="Issues">
          <a href="/sensu/sensu-community-plugins/issues" aria-label="Issues" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-gotokey="i" data-selected-links="repo_issues /sensu/sensu-community-plugins/issues">
            <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
            <span class='counter'>14</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>

      <li class="tooltipped leftwards" title="Pull Requests">
        <a href="/sensu/sensu-community-plugins/pulls" aria-label="Pull Requests" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-gotokey="p" data-selected-links="repo_pulls /sensu/sensu-community-plugins/pulls">
            <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull Requests</span>
            <span class='counter'>6</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>


    </ul>
    <div class="sunken-menu-separator"></div>
    <ul class="sunken-menu-group">

      <li class="tooltipped leftwards" title="Pulse">
        <a href="/sensu/sensu-community-plugins/pulse" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="pulse /sensu/sensu-community-plugins/pulse">
          <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped leftwards" title="Graphs">
        <a href="/sensu/sensu-community-plugins/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="repo_graphs repo_contributors /sensu/sensu-community-plugins/graphs">
          <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped leftwards" title="Network">
        <a href="/sensu/sensu-community-plugins/network" aria-label="Network" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-selected-links="repo_network /sensu/sensu-community-plugins/network">
          <span class="octicon octicon-git-branch"></span> <span class="full-word">Network</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>
    </ul>


  </div>
</div>

              <div class="only-with-full-nav">
                

  

<div class="clone-url open"
  data-protocol-type="http"
  data-url="/users/set_protocol?protocol_selector=http&amp;protocol_type=clone">
  <h3><strong>HTTPS</strong> clone URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="https://github.com/sensu/sensu-community-plugins.git" readonly="readonly">

    <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/sensu/sensu-community-plugins.git" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>

  

<div class="clone-url "
  data-protocol-type="subversion"
  data-url="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone">
  <h3><strong>Subversion</strong> checkout URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="https://github.com/sensu/sensu-community-plugins" readonly="readonly">

    <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/sensu/sensu-community-plugins" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>


<p class="clone-options">You can clone with
      <a href="#" class="js-clone-selector" data-protocol="http">HTTPS</a>,
      or <a href="#" class="js-clone-selector" data-protocol="subversion">Subversion</a>.
  <span class="octicon help tooltipped upwards" title="Get help on which URL is right for you.">
    <a href="https://help.github.com/articles/which-remote-url-should-i-use">
    <span class="octicon octicon-question"></span>
    </a>
  </span>
</p>



                <a href="/sensu/sensu-community-plugins/archive/98dc9ea734b2be19e80433103db6ce30e5914a2c.zip"
                   class="minibutton sidebar-button"
                   title="Download this repository as a zip file"
                   rel="nofollow">
                  <span class="octicon octicon-cloud-download"></span>
                  Download ZIP
                </a>
              </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>
          


<!-- blob contrib key: blob_contributors:v21:3f37f35de9f74cf4e1203bdf234bdebe -->

<p title="This is a placeholder element" class="js-history-link-replace hidden"></p>

<a href="/sensu/sensu-community-plugins/find/98dc9ea734b2be19e80433103db6ce30e5914a2c" data-pjax data-hotkey="t" class="js-show-file-finder" style="display:none">Show File Finder</a>

<div class="file-navigation">
  

<div class="select-menu js-menu-container js-select-menu" >
  <span class="minibutton select-menu-button js-menu-target" data-hotkey="w"
    data-master-branch="master"
    data-ref=""
    role="button" aria-label="Switch branches or tags" tabindex="0">
    <span class="octicon octicon-git-branch"></span>
    <i>tree:</i>
    <span class="js-select-button">98dc9ea734</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax>

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-remove-close js-menu-close"></span>
      </div> <!-- /.select-menu-header -->

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div><!-- /.select-menu-tabs -->
      </div><!-- /.select-menu-filters -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/sensu/sensu-community-plugins/blob/gh-pages/plugins/system/check-load.rb"
                 data-name="gh-pages"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="gh-pages">gh-pages</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/sensu/sensu-community-plugins/blob/master/plugins/system/check-load.rb"
                 data-name="master"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="master">master</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/sensu/sensu-community-plugins/blob/rubocop_upgrade/plugins/system/check-load.rb"
                 data-name="rubocop_upgrade"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="rubocop_upgrade">rubocop_upgrade</a>
            </div> <!-- /.select-menu-item -->
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

    </div> <!-- /.select-menu-modal -->
  </div> <!-- /.select-menu-modal-holder -->
</div> <!-- /.select-menu -->

  <div class="breadcrumb">
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/sensu/sensu-community-plugins/tree/98dc9ea734b2be19e80433103db6ce30e5914a2c" data-branch="98dc9ea734b2be19e80433103db6ce30e5914a2c" data-direction="back" data-pjax="true" itemscope="url" rel="nofollow"><span itemprop="title">sensu-community-plugins</span></a></span></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/sensu/sensu-community-plugins/tree/98dc9ea734b2be19e80433103db6ce30e5914a2c/plugins" data-branch="98dc9ea734b2be19e80433103db6ce30e5914a2c" data-direction="back" data-pjax="true" itemscope="url" rel="nofollow"><span itemprop="title">plugins</span></a></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/sensu/sensu-community-plugins/tree/98dc9ea734b2be19e80433103db6ce30e5914a2c/plugins/system" data-branch="98dc9ea734b2be19e80433103db6ce30e5914a2c" data-direction="back" data-pjax="true" itemscope="url" rel="nofollow"><span itemprop="title">system</span></a></span><span class="separator"> / </span><strong class="final-path">check-load.rb</strong> <span class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="plugins/system/check-load.rb" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>

  <div class="commit commit-loader file-history-tease js-deferred-content" data-url="/sensu/sensu-community-plugins/contributors/98dc9ea734b2be19e80433103db6ce30e5914a2c/plugins/system/check-load.rb">
    Fetching contributors…

    <div class="participation">
      <p class="loader-loading"><img alt="Octocat-spinner-32-eaf2f5" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32-EAF2F5.gif" width="16" /></p>
      <p class="loader-error">Cannot retrieve contributors at this time</p>
    </div>
  </div>

<div id="files" class="bubble">
  <div class="file">
    <div class="meta">
      <div class="info">
        <span class="icon"><b class="octicon octicon-file-text"></b></span>
        <span class="mode" title="File Mode">executable file</span>
          <span>56 lines (48 sloc)</span>
        <span>1.336 kb</span>
      </div>
      <div class="actions">
        <div class="button-group">
              <a class="minibutton disabled tooltipped leftwards" href="#"
                 title="You must be signed in to make or propose changes">Edit</a>
          <a href="/sensu/sensu-community-plugins/raw/98dc9ea734b2be19e80433103db6ce30e5914a2c/plugins/system/check-load.rb" class="button minibutton " id="raw-url">Raw</a>
            <a href="/sensu/sensu-community-plugins/blame/98dc9ea734b2be19e80433103db6ce30e5914a2c/plugins/system/check-load.rb" class="button minibutton js-update-url-with-hash">Blame</a>
          <a href="/sensu/sensu-community-plugins/commits/98dc9ea734b2be19e80433103db6ce30e5914a2c/plugins/system/check-load.rb" class="button minibutton " rel="nofollow">History</a>
        </div><!-- /.button-group -->
          <a class="minibutton danger disabled empty-icon tooltipped leftwards" href="#"
             title="You must be signed in to make or propose changes">
          Delete
        </a>
      </div><!-- /.actions -->
    </div>
        <div class="blob-wrapper data type-ruby js-blob-data">
        <table class="file-code file-diff">
          <tr class="file-code-line">
            <td class="blob-line-nums">
              <span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>
<span id="L23" rel="#L23">23</span>
<span id="L24" rel="#L24">24</span>
<span id="L25" rel="#L25">25</span>
<span id="L26" rel="#L26">26</span>
<span id="L27" rel="#L27">27</span>
<span id="L28" rel="#L28">28</span>
<span id="L29" rel="#L29">29</span>
<span id="L30" rel="#L30">30</span>
<span id="L31" rel="#L31">31</span>
<span id="L32" rel="#L32">32</span>
<span id="L33" rel="#L33">33</span>
<span id="L34" rel="#L34">34</span>
<span id="L35" rel="#L35">35</span>
<span id="L36" rel="#L36">36</span>
<span id="L37" rel="#L37">37</span>
<span id="L38" rel="#L38">38</span>
<span id="L39" rel="#L39">39</span>
<span id="L40" rel="#L40">40</span>
<span id="L41" rel="#L41">41</span>
<span id="L42" rel="#L42">42</span>
<span id="L43" rel="#L43">43</span>
<span id="L44" rel="#L44">44</span>
<span id="L45" rel="#L45">45</span>
<span id="L46" rel="#L46">46</span>
<span id="L47" rel="#L47">47</span>
<span id="L48" rel="#L48">48</span>
<span id="L49" rel="#L49">49</span>
<span id="L50" rel="#L50">50</span>
<span id="L51" rel="#L51">51</span>
<span id="L52" rel="#L52">52</span>
<span id="L53" rel="#L53">53</span>
<span id="L54" rel="#L54">54</span>
<span id="L55" rel="#L55">55</span>

            </td>
            <td class="blob-line-code">
                    <div class="code-body highlight"><pre><div class='line' id='LC1'><span class="c1">#!/usr/bin/env ruby</span></div><div class='line' id='LC2'><span class="c1">#</span></div><div class='line' id='LC3'><span class="c1"># Check Linux system load</span></div><div class='line' id='LC4'><span class="c1"># ===</span></div><div class='line' id='LC5'><span class="c1">#</span></div><div class='line' id='LC6'><span class="c1"># Copyright 2012 Sonian, Inc &lt;chefs@sonian.net&gt;</span></div><div class='line' id='LC7'><span class="c1">#</span></div><div class='line' id='LC8'><span class="c1"># Released under the same terms as Sensu (the MIT license); see LICENSE</span></div><div class='line' id='LC9'><span class="c1"># for details.</span></div><div class='line' id='LC10'><br/></div><div class='line' id='LC11'><span class="c1"># rubocop:disable HandleExceptions</span></div><div class='line' id='LC12'><br/></div><div class='line' id='LC13'><span class="nb">require</span> <span class="s1">&#39;rubygems&#39;</span> <span class="k">if</span> <span class="no">RUBY_VERSION</span> <span class="o">&lt;</span> <span class="s1">&#39;1.9.0&#39;</span></div><div class='line' id='LC14'><span class="nb">require</span> <span class="s1">&#39;sensu-plugin/check/cli&#39;</span></div><div class='line' id='LC15'><br/></div><div class='line' id='LC16'><span class="k">class</span> <span class="nc">LoadAverage</span></div><div class='line' id='LC17'>&nbsp;&nbsp;<span class="k">def</span> <span class="nf">initialize</span></div><div class='line' id='LC18'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="vi">@avg</span> <span class="o">=</span> <span class="no">File</span><span class="o">.</span><span class="n">read</span><span class="p">(</span><span class="s1">&#39;/proc/loadavg&#39;</span><span class="p">)</span><span class="o">.</span><span class="n">split</span><span class="o">.</span><span class="n">take</span><span class="p">(</span><span class="mi">3</span><span class="p">)</span><span class="o">.</span><span class="n">map</span> <span class="p">{</span><span class="o">|</span><span class="n">a</span><span class="o">|</span> <span class="n">a</span><span class="o">.</span><span class="n">to_f</span> <span class="p">}</span> <span class="k">rescue</span> <span class="kp">nil</span></div><div class='line' id='LC19'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC20'>&nbsp;&nbsp;<span class="k">def</span> <span class="nf">failed?</span></div><div class='line' id='LC21'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="vi">@avg</span><span class="o">.</span><span class="n">nil?</span></div><div class='line' id='LC22'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC23'>&nbsp;&nbsp;<span class="k">def</span> <span class="nf">exceed?</span><span class="p">(</span><span class="n">thresholds</span><span class="p">)</span></div><div class='line' id='LC24'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="vi">@avg</span><span class="o">.</span><span class="n">zip</span><span class="p">(</span><span class="n">thresholds</span><span class="p">)</span><span class="o">.</span><span class="n">any?</span> <span class="p">{</span><span class="o">|</span><span class="n">a</span><span class="p">,</span> <span class="n">t</span><span class="o">|</span> <span class="n">a</span> <span class="o">&gt;</span> <span class="n">t</span> <span class="p">}</span></div><div class='line' id='LC25'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC26'>&nbsp;&nbsp;<span class="k">def</span> <span class="nf">to_s</span></div><div class='line' id='LC27'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="vi">@avg</span><span class="o">.</span><span class="n">join</span><span class="p">(</span><span class="s1">&#39;, &#39;</span><span class="p">)</span></div><div class='line' id='LC28'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC29'><span class="k">end</span></div><div class='line' id='LC30'><br/></div><div class='line' id='LC31'><span class="k">class</span> <span class="nc">CheckLoad</span> <span class="o">&lt;</span> <span class="no">Sensu</span><span class="o">::</span><span class="no">Plugin</span><span class="o">::</span><span class="no">Check</span><span class="o">::</span><span class="no">CLI</span></div><div class='line' id='LC32'><br/></div><div class='line' id='LC33'>&nbsp;&nbsp;<span class="n">option</span> <span class="ss">:warn</span><span class="p">,</span></div><div class='line' id='LC34'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">:short</span> <span class="o">=&gt;</span> <span class="s1">&#39;-w L1,L5,L15&#39;</span><span class="p">,</span></div><div class='line' id='LC35'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">:long</span> <span class="o">=&gt;</span> <span class="s1">&#39;--warn L1,L5,L15&#39;</span><span class="p">,</span></div><div class='line' id='LC36'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">:description</span> <span class="o">=&gt;</span> <span class="s1">&#39;Load WARNING threshold, 1/5/15 min average&#39;</span><span class="p">,</span></div><div class='line' id='LC37'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">:proc</span> <span class="o">=&gt;</span> <span class="nb">proc</span> <span class="p">{</span><span class="o">|</span><span class="n">a</span><span class="o">|</span> <span class="n">a</span><span class="o">.</span><span class="n">split</span><span class="p">(</span><span class="s1">&#39;,&#39;</span><span class="p">)</span><span class="o">.</span><span class="n">map</span> <span class="p">{</span><span class="o">|</span><span class="n">t</span><span class="o">|</span> <span class="n">t</span><span class="o">.</span><span class="n">to_f</span> <span class="p">}</span> <span class="p">},</span></div><div class='line' id='LC38'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">:default</span> <span class="o">=&gt;</span> <span class="o">[</span><span class="mi">10</span><span class="p">,</span> <span class="mi">20</span><span class="p">,</span> <span class="mi">30</span><span class="o">]</span></div><div class='line' id='LC39'>&nbsp;&nbsp;<span class="n">option</span> <span class="ss">:crit</span><span class="p">,</span></div><div class='line' id='LC40'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">:short</span> <span class="o">=&gt;</span> <span class="s1">&#39;-c L1,L5,L15&#39;</span><span class="p">,</span></div><div class='line' id='LC41'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">:long</span> <span class="o">=&gt;</span> <span class="s1">&#39;--crit L1,L5,L15&#39;</span><span class="p">,</span></div><div class='line' id='LC42'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">:description</span> <span class="o">=&gt;</span> <span class="s1">&#39;Load CRITICAL threshold, 1/5/15 min average&#39;</span><span class="p">,</span></div><div class='line' id='LC43'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">:proc</span> <span class="o">=&gt;</span> <span class="nb">proc</span> <span class="p">{</span><span class="o">|</span><span class="n">a</span><span class="o">|</span> <span class="n">a</span><span class="o">.</span><span class="n">split</span><span class="p">(</span><span class="s1">&#39;,&#39;</span><span class="p">)</span><span class="o">.</span><span class="n">map</span> <span class="p">{</span><span class="o">|</span><span class="n">t</span><span class="o">|</span> <span class="n">t</span><span class="o">.</span><span class="n">to_f</span> <span class="p">}</span> <span class="p">},</span></div><div class='line' id='LC44'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">:default</span> <span class="o">=&gt;</span> <span class="o">[</span><span class="mi">25</span><span class="p">,</span> <span class="mi">50</span><span class="p">,</span> <span class="mi">75</span><span class="o">]</span></div><div class='line' id='LC45'><br/></div><div class='line' id='LC46'>&nbsp;&nbsp;<span class="k">def</span> <span class="nf">run</span></div><div class='line' id='LC47'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">avg</span> <span class="o">=</span> <span class="no">LoadAverage</span><span class="o">.</span><span class="n">new</span></div><div class='line' id='LC48'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">warning</span> <span class="s2">&quot;Could not read load average from /proc&quot;</span> <span class="k">if</span> <span class="n">avg</span><span class="o">.</span><span class="n">failed?</span></div><div class='line' id='LC49'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">message</span> <span class="s2">&quot;Load average: </span><span class="si">#{</span><span class="n">avg</span><span class="si">}</span><span class="s2">&quot;</span></div><div class='line' id='LC50'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">critical</span> <span class="k">if</span> <span class="n">avg</span><span class="o">.</span><span class="n">exceed?</span><span class="p">(</span><span class="n">config</span><span class="o">[</span><span class="ss">:crit</span><span class="o">]</span><span class="p">)</span></div><div class='line' id='LC51'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">warning</span> <span class="k">if</span> <span class="n">avg</span><span class="o">.</span><span class="n">exceed?</span><span class="p">(</span><span class="n">config</span><span class="o">[</span><span class="ss">:warn</span><span class="o">]</span><span class="p">)</span></div><div class='line' id='LC52'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">ok</span></div><div class='line' id='LC53'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC54'><br/></div><div class='line' id='LC55'><span class="k">end</span></div></pre></div>
            </td>
          </tr>
        </table>
  </div>

  </div>
</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" class="js-jump-to-line" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" class="js-jump-to-line-form">
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" autofocus>
    <button type="submit" class="button">Go</button>
  </form>
</div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer">
    <ul class="site-footer-links right">
      <li><a href="https://status.github.com/">Status</a></li>
      <li><a href="http://developer.github.com">API</a></li>
      <li><a href="http://training.github.com">Training</a></li>
      <li><a href="http://shop.github.com">Shop</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="/about">About</a></li>

    </ul>

    <a href="/">
      <span class="mega-octicon octicon-mark-github" title="GitHub"></span>
    </a>

    <ul class="site-footer-links">
      <li>&copy; 2014 <span title="0.04876s from github-fe131-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="/site/terms">Terms</a></li>
        <li><a href="/site/privacy">Privacy</a></li>
        <li><a href="/security">Security</a></li>
        <li><a href="/contact">Contact</a></li>
    </ul>
  </div><!-- /.site-footer -->
</div><!-- /.container -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-fullscreen-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="js-fullscreen-contents" placeholder="" data-suggester="fullscreen_suggester"></textarea>
          <div class="suggester-container">
              <div class="suggester fullscreen-suggester js-navigation-container" id="fullscreen_suggester"
                 data-url="/sensu/sensu-community-plugins/suggestions/commit">
              </div>
          </div>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped leftwards" title="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped leftwards"
      title="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-remove-close close js-ajax-error-dismiss"></a>
      Something went wrong with that request. Please try again.
    </div>

  </body>
</html>

