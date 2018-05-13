<div class="scrollspy">
    <ul id="main-menu" data-spy="affix" class="nav">
        <li>
            <a href="#doc-general-notes">General notes</a>
        </li>
        {{ with $structures := .Structures }}
        <li>
            <a href="#doc-api-structures">API structures</a>
            <ul>
                {{ range $structures }}
                <li>
                    <a href="#struct-{{ .Name }}">{{ .Name }}</a>
                </li>
                {{ end }}
            </ul>
        </li>
        {{ end }}
        <li>
            <a href="#doc-api-detail">API detail</a>
        </li>
        {{ range .Requests }}
        <li>
            <a href="#request-{{ slugify .Name }}">{{ .Name }}</a>
        </li>
        {{ end }}
        {{ range .Folders }}
        {{ $folder := . }}
        <li>
            <a href="#folder-{{ slugify $folder.Name }}">{{ $folder.Name }}</a>
            <ul>
                {{ range $folder.Requests }}
                <li>
                    <a href="#request-{{ slugify $folder.Name }}-{{ slugify .Name }}">{{ .Name }}</a>
                </li>
                {{ end }}
            </ul>
        </li>
        {{ end }}
                <li>
        <div id = "postman" class="postman-run-button"
data-postman-action="collection/import"
data-postman-var-1="99f3c1cd653aa3656c1b"></div>
<script type="text/javascript">
  (function (p,o,s,t,m,a,n) {
    !p[s] && (p[s] = function () { (p[t] || (p[t] = [])).push(arguments); });
    !o.getElementById(s+t) && o.getElementsByTagName("head")[0].appendChild((
      (n = o.createElement("script")),
      (n.id = s+t), (n.async = 1), (n.src = m), n
    ));
  }(window, document, "_pm", "PostmanRunObject", "https://run.pstmn.io/button.js"));
</script>
        </li>
    </ul>
</div>
