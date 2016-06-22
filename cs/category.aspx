<%@ Page %>
<je:container runat="server" expect="blogPostCategory">
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <je:stylelink runat="server" href="/assets/css/main.css" />
        <title>Kategorie: <je:item runat="server" field=".title" /></title>
    </head>
    <body>
        <header>
            <je:a runat="server" class="logo" href="/cs/">Můj blog</je:a>
            <nav>
                <je:a runat="server" href="/cs/">Homepage</je:a>
                <je:a runat="server" href="/cs/about.aspx">O autorovi</je:a>
            </nav>
        </header>
        <main>
            <h1>Kategorie: <je:item runat="server" field=".title" /></h1>
            <je:repeater runat="server"
                            source="blogPost"
                            restrictField="category">
                <item>
                    <h2>
                        <je:avar runat="server" href="blogpost.aspx">
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
</je:container>
