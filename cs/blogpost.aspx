<%@ Page %>
<je:container runat="server" expect="blogPost">
    <!DOCTYPE html>
    <html>
        <head>
            <meta charset="utf-8">
            <je:stylelink runat="server" href="/assets/css/main.css" />
            <title><je:item runat="server" field=".title" /></title>
        </head>
        <body>
            <header>
                <div class="logo"><je:a runat="server" href="/cs/">Můj blog</je:a></div>
                <nav>
                    <ul>
                        <li><je:a runat="server" href="/cs/">Homepage</je:a></li>
                    </ul>                
                </nav>
            </header>
            <main>
                <je:item runat="server" field=".title" tag="h1" />
                <je:item runat="server" field=".published" tag="time" />
                <je:item runat="server" field=".text" tag="p" />
            </main>
        </body>
    </html>
</je:container>