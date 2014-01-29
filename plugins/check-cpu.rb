




<!DOCTYPE html>
<html>
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>sensu-community-plugins/plugins/system/check-cpu.rb at 98dc9ea734b2be19e80433103db6ce30e5914a2c · sensu/sensu-community-plugins · GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png" />
    <meta property="fb:app_id" content="1401488693436528"/>

      <meta content="@github" name="twitter:site" /><meta content="summary" name="twitter:card" /><meta content="sensu/sensu-community-plugins" name="twitter:title" /><meta content="sensu-community-plugins - Sensu community plugins &amp;amp; handlers, sharing is good." name="twitter:description" /><meta content="https://2.gravatar.com/avatar/f944437e121d4e1efc45dfaec2651550?d=https%3A%2F%2Fidenticons.github.com%2Fab948e17c6dd9cabb73e8d2d2f0019a0.png&amp;r=x&amp;s=400" name="twitter:image:src" />
<meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="https://2.gravatar.com/avatar/f944437e121d4e1efc45dfaec2651550?d=https%3A%2F%2Fidenticons.github.com%2Fab948e17c6dd9cabb73e8d2d2f0019a0.png&amp;r=x&amp;s=400" property="og:image" /><meta content="sensu/sensu-community-plugins" property="og:title" /><meta content="https://github.com/sensu/sensu-community-plugins" property="og:url" /><meta content="sensu-community-plugins - Sensu community plugins &amp; handlers, sharing is good." property="og:description" />

    <meta name="hostname" content="github-fe118-cp1-prd.iad.github.net">
    <meta name="ruby" content="ruby 2.1.0p0-github-tcmalloc (60139581e1) [x86_64-linux]">
    <link rel="assets" href="https://github.global.ssl.fastly.net/">
    <link rel="conduit-xhr" href="https://ghconduit.com:25035/">
    <link rel="xhr-socket" href="/_sockets" />
    


    <meta name="msapplication-TileImage" content="/windows-tile.png" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="selected-link" value="repo_source" data-pjax-transient />
    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="collector-cdn.github.com" name="octolytics-script-host" /><meta content="github" name="octolytics-app-id" /><meta content="818A0386:5BD5:95BC24:52E97E83" name="octolytics-dimension-request_id" />
    

    
    
    <link rel="icon" type="image/x-icon" href="/favicon.ico" />

    <meta content="authenticity_token" name="csrf-param" />
<meta content="p8/udibA1awVo5BG3jVQ1tcgUlzEd0Sd5jE8c65WJGs=" name="csrf-token" />

    <link href="https://github.global.ssl.fastly.net/assets/github-b15642b174af75fdb8a21ac9afd3d0f515222789.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://github.global.ssl.fastly.net/assets/github2-0940cdb67a2fa5e0022b98d66e0d0ff802083d56.css" media="all" rel="stylesheet" type="text/css" />
    


      <script src="https://github.global.ssl.fastly.net/assets/frameworks-3e59bf2ccf0be318d5d920c2ab0bf1ab4cb3a96b.js" type="text/javascript"></script>
      <script async="async" defer="defer" src="https://github.global.ssl.fastly.net/assets/github-8ec2f887be193ff878e68d7c9c5ef053f2cd6187.js" type="text/javascript"></script>
      
      <meta http-equiv="x-pjax-version" content="08603cdf34a89b16f5078e39afa7b331">

        <link data-pjax-transient rel='permalink' href='/sensu/sensu-community-plugins/blob/98dc9ea734b2be19e80433103db6ce30e5914a2c/plugins/system/check-cpu.rb'>

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
      <a class="button signin" href="/login?return_to=%2Fsensu%2Fsensu-community-plugins%2Fblob%2F98dc9ea734b2be19e80433103db6ce30e5914a2c%2Fplugins%2Fsystem%2Fcheck-cpu.rb">Sign in</a>
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
          


<!-- blob contrib key: blob_contributors:v21:8ac80996f2c494c8c38a5c7fa28bec51 -->

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
              <a href="/sensu/sensu-community-plugins/blob/gh-pages/plugins/system/check-cpu.rb"
                 data-name="gh-pages"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="gh-pages">gh-pages</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/sensu/sensu-community-plugins/blob/master/plugins/system/check-cpu.rb"
                 data-name="master"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="master">master</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/sensu/sensu-community-plugins/blob/rubocop_upgrade/plugins/system/check-cpu.rb"
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
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/sensu/sensu-community-plugins/tree/98dc9ea734b2be19e80433103db6ce30e5914a2c" data-branch="98dc9ea734b2be19e80433103db6ce30e5914a2c" data-direction="back" data-pjax="true" itemscope="url" rel="nofollow"><span itemprop="title">sensu-community-plugins</span></a></span></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/sensu/sensu-community-plugins/tree/98dc9ea734b2be19e80433103db6ce30e5914a2c/plugins" data-branch="98dc9ea734b2be19e80433103db6ce30e5914a2c" data-direction="back" data-pjax="true" itemscope="url" rel="nofollow"><span itemprop="title">plugins</span></a></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/sensu/sensu-community-plugins/tree/98dc9ea734b2be19e80433103db6ce30e5914a2c/plugins/system" data-branch="98dc9ea734b2be19e80433103db6ce30e5914a2c" data-direction="back" data-pjax="true" itemscope="url" rel="nofollow"><span itemprop="title">system</span></a></span><span class="separator"> / </span><strong class="final-path">check-cpu.rb</strong> <span class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="plugins/system/check-cpu.rb" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>


  <div class="commit file-history-tease">
    <img alt="horus" class="main-avatar" height="24" src="https://0.gravatar.com/avatar/560f0f22739007f455340dd102ff2fbd?d=https%3A%2F%2Fidenticons.github.com%2F2483c09c1e06c0fa5164059d849518fd.png&amp;r=x&amp;s=140" width="24" />
    <span class="author"><a href="/horus" rel="author">horus</a></span>
    <time class="js-relative-date" datetime="2013-08-29T06:02:10-07:00" title="2013-08-29 06:02:10">August 29, 2013</time>
    <div class="commit-title">
        <a href="/sensu/sensu-community-plugins/commit/62ab399300062c76d32405dfb2138e66e659d3bf" class="message" data-pjax="true" title="fix suspicious critical threshold">fix suspicious critical threshold</a>
    </div>

    <div class="participation">
      <p class="quickstat"><a href="#blob_contributors_box" rel="facebox"><strong>3</strong> contributors</a></p>
          <a class="avatar tooltipped downwards" title="nstielau" href="/sensu/sensu-community-plugins/commits/98dc9ea734b2be19e80433103db6ce30e5914a2c/plugins/system/check-cpu.rb?author=nstielau"><img alt="nstielau" height="20" src="https://0.gravatar.com/avatar/43578cffb1df8ac139de839c68019cc7?d=https%3A%2F%2Fidenticons.github.com%2Fa1ac769a261b4ac11e1fd4fd33b2ae8b.png&amp;r=x&amp;s=140" width="20" /></a>
    <a class="avatar tooltipped downwards" title="piavlo" href="/sensu/sensu-community-plugins/commits/98dc9ea734b2be19e80433103db6ce30e5914a2c/plugins/system/check-cpu.rb?author=piavlo"><img alt="piavlo" height="20" src="https://0.gravatar.com/avatar/dd7c695ab011b6cab22d49a50bbb9b7c?d=https%3A%2F%2Fidenticons.github.com%2F3949350cebfd1d32e7278eaed55dc2f1.png&amp;r=x&amp;s=140" width="20" /></a>
    <a class="avatar tooltipped downwards" title="horus" href="/sensu/sensu-community-plugins/commits/98dc9ea734b2be19e80433103db6ce30e5914a2c/plugins/system/check-cpu.rb?author=horus"><img alt="horus" height="20" src="https://0.gravatar.com/avatar/560f0f22739007f455340dd102ff2fbd?d=https%3A%2F%2Fidenticons.github.com%2F2483c09c1e06c0fa5164059d849518fd.png&amp;r=x&amp;s=140" width="20" /></a>


    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header">Users who have contributed to this file</h2>
      <ul class="facebox-user-list">
          <li class="facebox-user-list-item">
            <img alt="nstielau" height="24" src="https://0.gravatar.com/avatar/43578cffb1df8ac139de839c68019cc7?d=https%3A%2F%2Fidenticons.github.com%2Fa1ac769a261b4ac11e1fd4fd33b2ae8b.png&amp;r=x&amp;s=140" width="24" />
            <a href="/nstielau">nstielau</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="piavlo" height="24" src="https://0.gravatar.com/avatar/dd7c695ab011b6cab22d49a50bbb9b7c?d=https%3A%2F%2Fidenticons.github.com%2F3949350cebfd1d32e7278eaed55dc2f1.png&amp;r=x&amp;s=140" width="24" />
            <a href="/piavlo">piavlo</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="horus" height="24" src="https://0.gravatar.com/avatar/560f0f22739007f455340dd102ff2fbd?d=https%3A%2F%2Fidenticons.github.com%2F2483c09c1e06c0fa5164059d849518fd.png&amp;r=x&amp;s=140" width="24" />
            <a href="/horus">horus</a>
          </li>
      </ul>
    </div>
  </div>

<div id="files" class="bubble">
  <div class="file">
    <div class="meta">
      <div class="info">
        <span class="icon"><b class="octicon octicon-file-text"></b></span>
        <span class="mode" title="File Mode">executable file</span>
          <span>86 lines (68 sloc)</span>
        <span>2.131 kb</span>
      </div>
      <div class="actions">
        <div class="button-group">
              <a class="minibutton disabled tooltipped leftwards" href="#"
                 title="You must be signed in to make or propose changes">Edit</a>
          <a href="/sensu/sensu-community-plugins/raw/98dc9ea734b2be19e80433103db6ce30e5914a2c/plugins/system/check-cpu.rb" class="button minibutton " id="raw-url">Raw</a>
            <a href="/sensu/sensu-community-plugins/blame/98dc9ea734b2be19e80433103db6ce30e5914a2c/plugins/system/check-cpu.rb" class="button minibutton js-update-url-with-hash">Blame</a>
          <a href="/sensu/sensu-community-plugins/commits/98dc9ea734b2be19e80433103db6ce30e5914a2c/plugins/system/check-cpu.rb" class="button minibutton " rel="nofollow">History</a>
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
<span id="L56" rel="#L56">56</span>
<span id="L57" rel="#L57">57</span>
<span id="L58" rel="#L58">58</span>
<span id="L59" rel="#L59">59</span>
<span id="L60" rel="#L60">60</span>
<span id="L61" rel="#L61">61</span>
<span id="L62" rel="#L62">62</span>
<span id="L63" rel="#L63">63</span>
<span id="L64" rel="#L64">64</span>
<span id="L65" rel="#L65">65</span>
<span id="L66" rel="#L66">66</span>
<span id="L67" rel="#L67">67</span>
<span id="L68" rel="#L68">68</span>
<span id="L69" rel="#L69">69</span>
<span id="L70" rel="#L70">70</span>
<span id="L71" rel="#L71">71</span>
<span id="L72" rel="#L72">72</span>
<span id="L73" rel="#L73">73</span>
<span id="L74" rel="#L74">74</span>
<span id="L75" rel="#L75">75</span>
<span id="L76" rel="#L76">76</span>
<span id="L77" rel="#L77">77</span>
<span id="L78" rel="#L78">78</span>
<span id="L79" rel="#L79">79</span>
<span id="L80" rel="#L80">80</span>
<span id="L81" rel="#L81">81</span>
<span id="L82" rel="#L82">82</span>
<span id="L83" rel="#L83">83</span>
<span id="L84" rel="#L84">84</span>
<span id="L85" rel="#L85">85</span>

            </td>
            <td class="blob-line-code">
                    <div class="code-body highlight"><pre><div class='line' id='LC1'><span class="c1">#!/usr/bin/env ruby</span></div><div class='line' id='LC2'><span class="c1">#</span></div><div class='line' id='LC3'><span class="c1"># Check CPU Plugin</span></div><div class='line' id='LC4'><span class="c1">#</span></div><div class='line' id='LC5'><br/></div><div class='line' id='LC6'><span class="nb">require</span> <span class="s1">&#39;rubygems&#39;</span> <span class="k">if</span> <span class="no">RUBY_VERSION</span> <span class="o">&lt;</span> <span class="s1">&#39;1.9.0&#39;</span></div><div class='line' id='LC7'><span class="nb">require</span> <span class="s1">&#39;sensu-plugin/check/cli&#39;</span></div><div class='line' id='LC8'><br/></div><div class='line' id='LC9'><span class="k">class</span> <span class="nc">CheckCPU</span> <span class="o">&lt;</span> <span class="no">Sensu</span><span class="o">::</span><span class="no">Plugin</span><span class="o">::</span><span class="no">Check</span><span class="o">::</span><span class="no">CLI</span></div><div class='line' id='LC10'><br/></div><div class='line' id='LC11'>&nbsp;&nbsp;<span class="n">option</span> <span class="ss">:warn</span><span class="p">,</span></div><div class='line' id='LC12'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">:short</span> <span class="o">=&gt;</span> <span class="s1">&#39;-w WARN&#39;</span><span class="p">,</span></div><div class='line' id='LC13'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">:proc</span> <span class="o">=&gt;</span> <span class="nb">proc</span> <span class="p">{</span><span class="o">|</span><span class="n">a</span><span class="o">|</span> <span class="n">a</span><span class="o">.</span><span class="n">to_f</span> <span class="p">},</span></div><div class='line' id='LC14'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">:default</span> <span class="o">=&gt;</span> <span class="mi">80</span></div><div class='line' id='LC15'><br/></div><div class='line' id='LC16'>&nbsp;&nbsp;<span class="n">option</span> <span class="ss">:crit</span><span class="p">,</span></div><div class='line' id='LC17'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">:short</span> <span class="o">=&gt;</span> <span class="s1">&#39;-c CRIT&#39;</span><span class="p">,</span></div><div class='line' id='LC18'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">:proc</span> <span class="o">=&gt;</span> <span class="nb">proc</span> <span class="p">{</span><span class="o">|</span><span class="n">a</span><span class="o">|</span> <span class="n">a</span><span class="o">.</span><span class="n">to_f</span> <span class="p">},</span></div><div class='line' id='LC19'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">:default</span> <span class="o">=&gt;</span> <span class="mi">100</span></div><div class='line' id='LC20'><br/></div><div class='line' id='LC21'>&nbsp;&nbsp;<span class="n">option</span> <span class="ss">:sleep</span><span class="p">,</span></div><div class='line' id='LC22'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">:long</span> <span class="o">=&gt;</span> <span class="s1">&#39;--sleep SLEEP&#39;</span><span class="p">,</span></div><div class='line' id='LC23'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">:proc</span> <span class="o">=&gt;</span> <span class="nb">proc</span> <span class="p">{</span><span class="o">|</span><span class="n">a</span><span class="o">|</span> <span class="n">a</span><span class="o">.</span><span class="n">to_f</span> <span class="p">},</span></div><div class='line' id='LC24'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">:default</span> <span class="o">=&gt;</span> <span class="mi">1</span></div><div class='line' id='LC25'><br/></div><div class='line' id='LC26'>&nbsp;&nbsp;<span class="o">[</span><span class="ss">:user</span><span class="p">,</span> <span class="ss">:nice</span><span class="p">,</span> <span class="ss">:system</span><span class="p">,</span> <span class="ss">:idle</span><span class="p">,</span> <span class="ss">:iowait</span><span class="p">,</span> <span class="ss">:irq</span><span class="p">,</span> <span class="ss">:softirq</span><span class="p">,</span> <span class="ss">:steal</span><span class="p">,</span> <span class="ss">:guest</span><span class="o">].</span><span class="n">each</span> <span class="k">do</span> <span class="o">|</span><span class="n">metric</span><span class="o">|</span></div><div class='line' id='LC27'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">option</span> <span class="n">metric</span><span class="p">,</span></div><div class='line' id='LC28'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">:long</span>  <span class="o">=&gt;</span> <span class="s2">&quot;--</span><span class="si">#{</span><span class="n">metric</span><span class="si">}</span><span class="s2">&quot;</span><span class="p">,</span></div><div class='line' id='LC29'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">:description</span> <span class="o">=&gt;</span> <span class="s2">&quot;Check cpu </span><span class="si">#{</span><span class="n">metric</span><span class="si">}</span><span class="s2"> instead of total cpu usage&quot;</span><span class="p">,</span></div><div class='line' id='LC30'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">:boolean</span> <span class="o">=&gt;</span> <span class="kp">true</span><span class="p">,</span></div><div class='line' id='LC31'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">:default</span> <span class="o">=&gt;</span> <span class="kp">false</span></div><div class='line' id='LC32'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC33'><br/></div><div class='line' id='LC34'>&nbsp;&nbsp;<span class="k">def</span> <span class="nf">get_cpu_stats</span></div><div class='line' id='LC35'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="no">File</span><span class="o">.</span><span class="n">open</span><span class="p">(</span><span class="s2">&quot;/proc/stat&quot;</span><span class="p">,</span> <span class="s2">&quot;r&quot;</span><span class="p">)</span><span class="o">.</span><span class="n">each_line</span> <span class="k">do</span> <span class="o">|</span><span class="n">line</span><span class="o">|</span></div><div class='line' id='LC36'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">info</span> <span class="o">=</span> <span class="n">line</span><span class="o">.</span><span class="n">split</span><span class="p">(</span><span class="sr">/\s+/</span><span class="p">)</span></div><div class='line' id='LC37'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">name</span> <span class="o">=</span> <span class="n">info</span><span class="o">.</span><span class="n">shift</span></div><div class='line' id='LC38'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="n">info</span><span class="o">.</span><span class="n">map</span><span class="p">{</span><span class="o">|</span><span class="n">i</span><span class="o">|</span> <span class="n">i</span><span class="o">.</span><span class="n">to_f</span><span class="p">}</span> <span class="k">if</span> <span class="nb">name</span><span class="o">.</span><span class="n">match</span><span class="p">(</span><span class="sr">/^cpu$/</span><span class="p">)</span></div><div class='line' id='LC39'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC40'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC41'><br/></div><div class='line' id='LC42'>&nbsp;&nbsp;<span class="k">def</span> <span class="nf">run</span></div><div class='line' id='LC43'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">metrics</span> <span class="o">=</span> <span class="o">[</span><span class="ss">:user</span><span class="p">,</span> <span class="ss">:nice</span><span class="p">,</span> <span class="ss">:system</span><span class="p">,</span> <span class="ss">:idle</span><span class="p">,</span> <span class="ss">:iowait</span><span class="p">,</span> <span class="ss">:irq</span><span class="p">,</span> <span class="ss">:softirq</span><span class="p">,</span> <span class="ss">:steal</span><span class="p">,</span> <span class="ss">:guest</span><span class="o">]</span></div><div class='line' id='LC44'><br/></div><div class='line' id='LC45'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">cpu_stats_before</span> <span class="o">=</span> <span class="n">get_cpu_stats</span></div><div class='line' id='LC46'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">sleep</span> <span class="n">config</span><span class="o">[</span><span class="ss">:sleep</span><span class="o">]</span></div><div class='line' id='LC47'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">cpu_stats_after</span> <span class="o">=</span> <span class="n">get_cpu_stats</span></div><div class='line' id='LC48'><br/></div><div class='line' id='LC49'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">cpu_total_diff</span> <span class="o">=</span> <span class="mi">0</span><span class="o">.</span><span class="n">to_f</span></div><div class='line' id='LC50'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">cpu_stats_diff</span> <span class="o">=</span> <span class="o">[]</span></div><div class='line' id='LC51'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">metrics</span><span class="o">.</span><span class="n">each_index</span> <span class="k">do</span> <span class="o">|</span><span class="n">i</span><span class="o">|</span></div><div class='line' id='LC52'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># Some OS&#39;s don&#39;t have a &#39;guest&#39; values (RHEL)</span></div><div class='line' id='LC53'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">unless</span> <span class="n">cpu_stats_after</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="n">nil?</span></div><div class='line' id='LC54'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">cpu_stats_diff</span><span class="o">[</span><span class="n">i</span><span class="o">]</span> <span class="o">=</span> <span class="n">cpu_stats_after</span><span class="o">[</span><span class="n">i</span><span class="o">]</span> <span class="o">-</span> <span class="n">cpu_stats_before</span><span class="o">[</span><span class="n">i</span><span class="o">]</span></div><div class='line' id='LC55'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">cpu_total_diff</span> <span class="o">+=</span> <span class="n">cpu_stats_diff</span><span class="o">[</span><span class="n">i</span><span class="o">]</span></div><div class='line' id='LC56'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC57'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC58'><br/></div><div class='line' id='LC59'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">cpu_stats</span> <span class="o">=</span> <span class="o">[]</span></div><div class='line' id='LC60'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">metrics</span><span class="o">.</span><span class="n">each_index</span> <span class="k">do</span> <span class="o">|</span><span class="n">i</span><span class="o">|</span></div><div class='line' id='LC61'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">cpu_stats</span><span class="o">[</span><span class="n">i</span><span class="o">]</span> <span class="o">=</span> <span class="mi">100</span><span class="o">*</span><span class="p">(</span><span class="n">cpu_stats_diff</span><span class="o">[</span><span class="n">i</span><span class="o">]/</span><span class="n">cpu_total_diff</span><span class="p">)</span></div><div class='line' id='LC62'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC63'><br/></div><div class='line' id='LC64'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">cpu_usage</span> <span class="o">=</span> <span class="mi">100</span><span class="o">*</span><span class="p">(</span><span class="n">cpu_total_diff</span> <span class="o">-</span> <span class="n">cpu_stats_diff</span><span class="o">[</span><span class="mi">3</span><span class="o">]</span><span class="p">)</span><span class="o">/</span><span class="n">cpu_total_diff</span></div><div class='line' id='LC65'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">checked_usage</span> <span class="o">=</span> <span class="n">cpu_usage</span></div><div class='line' id='LC66'><br/></div><div class='line' id='LC67'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">self</span><span class="o">.</span><span class="n">class</span><span class="o">.</span><span class="n">check_name</span> <span class="s1">&#39;CheckCPU TOTAL&#39;</span></div><div class='line' id='LC68'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">metrics</span><span class="o">.</span><span class="n">each</span> <span class="k">do</span> <span class="o">|</span><span class="n">metric</span><span class="o">|</span></div><div class='line' id='LC69'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="n">config</span><span class="o">[</span><span class="n">metric</span><span class="o">]</span></div><div class='line' id='LC70'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">self</span><span class="o">.</span><span class="n">class</span><span class="o">.</span><span class="n">check_name</span> <span class="s2">&quot;CheckCPU </span><span class="si">#{</span><span class="n">metric</span><span class="o">.</span><span class="n">to_s</span><span class="o">.</span><span class="n">upcase</span><span class="si">}</span><span class="s2">&quot;</span></div><div class='line' id='LC71'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">checked_usage</span> <span class="o">=</span> <span class="n">cpu_stats</span><span class="o">[</span><span class="n">metrics</span><span class="o">.</span><span class="n">find_index</span><span class="p">(</span><span class="n">metric</span><span class="p">)</span><span class="o">]</span></div><div class='line' id='LC72'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC73'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC74'><br/></div><div class='line' id='LC75'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">msg</span> <span class="o">=</span> <span class="s2">&quot;total=</span><span class="si">#{</span><span class="n">cpu_usage</span><span class="o">.</span><span class="n">round</span><span class="p">(</span><span class="mi">2</span><span class="p">)</span><span class="si">}</span><span class="s2">&quot;</span></div><div class='line' id='LC76'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">cpu_stats</span><span class="o">.</span><span class="n">each_index</span> <span class="p">{</span><span class="o">|</span><span class="n">i</span><span class="o">|</span> <span class="n">msg</span> <span class="o">+=</span> <span class="s2">&quot; </span><span class="si">#{</span><span class="n">metrics</span><span class="o">[</span><span class="n">i</span><span class="o">]</span><span class="si">}</span><span class="s2">=</span><span class="si">#{</span><span class="n">cpu_stats</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="n">round</span><span class="p">(</span><span class="mi">2</span><span class="p">)</span><span class="si">}</span><span class="s2">&quot;</span><span class="p">}</span></div><div class='line' id='LC77'><br/></div><div class='line' id='LC78'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">message</span> <span class="n">msg</span></div><div class='line' id='LC79'><br/></div><div class='line' id='LC80'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">critical</span> <span class="k">if</span> <span class="n">checked_usage</span> <span class="o">&gt;</span> <span class="n">config</span><span class="o">[</span><span class="ss">:crit</span><span class="o">]</span></div><div class='line' id='LC81'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">warning</span> <span class="k">if</span> <span class="n">checked_usage</span> <span class="o">&gt;</span> <span class="n">config</span><span class="o">[</span><span class="ss">:warn</span><span class="o">]</span></div><div class='line' id='LC82'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">ok</span></div><div class='line' id='LC83'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC84'><br/></div><div class='line' id='LC85'><span class="k">end</span></div></pre></div>
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
      <li>&copy; 2014 <span title="0.02478s from github-fe118-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
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

