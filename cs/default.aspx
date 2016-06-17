<%@ Page %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <je:stylelink runat="server" href="/assets/css/main.css" />
        <title>Můj cvičný blog</title>
    </head>
    <body>
        <header>
            <div class="logo"><je:a runat="server" href="/">Můj blog</je:a></div>
            <nav>
                <ul>
                    <li><je:a runat="server" href="/">Homepage</je:a></li>
                </ul>                
            </nav>
        </header>
        <main>
            <je:repeater runat="server" source="blogPost">
                <item>
                    <h2>
                        <je:avar runat="server" href="/cs/blogpost.aspx">
                            <je:item runat="server" field=".title" />
                        </je:avar>
                    </h2>
                    <je:item runat="server" field=".published" tag="time" />
                    <je:item runat="server"
                             field=".text"
                             format="length: 300"
                             tag="p" />
                </item>
            </je:repeater>
        </main>
    </body>
</html>