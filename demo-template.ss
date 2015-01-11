<html>
    <head>
        <% base_tag %>
        <title>$Title</title>
        $MetaTagsdiv
        <% require themedCSS('LeftNavMenu') %>
    </head>
    <body>
    <div id="Container">
        <div id="Header">
            <h1>Bob's Chicken Shack</h1>
        </div>
        <div id="Navigation">
            <% if Menu(1) %>
            <ul>
                <% control Menu(1) %>
                <li><a href="$Link" title="Go to the $Title page" class="$LinkingMode">$MenuTitle</a></li>
                <% end_control %>
            </ul>
            <% end_if %>
        </div>
        <div class="typography">

            <%-- Preperties --%>

            $Property
            $Property(param)
            $Property.SubProperty
            {$Property}
            {$Property(param)}
            {$Property.SubProperty}

            <%-- Includes --%>

            <% include SideBar %>

            <%-- Controls --%>

            <% control Property %>
            ... content ...
            <% end_control %>

            <% control Property.SubProperty %>
            ... content ...
            <% end_control %>

            <% control Property(param) %>
            ... content ...
            <% end_control %>

            <% control Menu(1) %>
                <a href="$Link">$Title</a>
            <% end_control %>

            <%-- Conditionals --%>

            <% if Property %>
            ... optional content ...
            <% else_if OtherProperty %>
            ... alternative content ...
            <% else %>
            ... alternative content ...
            <% end_if %>

            <% if Property == value %>
            <% else %>
            <% end_if %>

            <% if Property != value %>
            <% end_if %>

            <% if Property && Property2 %>
            <% end_if %>

            <% if Property || Property2 %>
            <% end_if %>

            <%-- Partial Caching --%>

            <% cacheblock 'slowoperation', LastEdited %>
            $SlowOperation
            <% end_cacheblock %>

        </div>
        <div id="Footer">
            <p>Copyright $Now.Year</p>
        </div>
    </div>
    </body>
</html>
