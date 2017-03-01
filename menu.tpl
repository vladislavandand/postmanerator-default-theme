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
        {{ range .Folders }} {{ with $folder := . }}
        <li>
            <a href="#folder-{{ slugify $folder.Name }}">{{ $folder.Name }}</a>
            <ul>
                {{ range $folder.Order }} {{ with $req := findRequest $.Requests . }}
                <li>
                    <a href="#request-{{ slugify $folder.Name }}-{{ slugify $req.Name }}">{{ $req.Name }}</a>
                </li>
                {{ end }} {{ end }}
            </ul>
        </li>
        {{ end }} {{ end }}
    </ul>
</div>
