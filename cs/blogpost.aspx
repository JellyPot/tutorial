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
            <je:a runat="server" class="logo" href="/cs/">Můj blog</je:a>
            <nav>
                <je:a runat="server" href="/cs/">Homepage</je:a>
                <je:a runat="server" href="/cs/about.aspx">O autorovi</je:a>
            </nav>
        </header>
        <main>
            <je:item runat="server" field=".title" tag="h1" />
            <je:item runat="server" field=".published" tag="time" />
            <je:avar runat="server" href="category.aspx" container=".category">
                <je:item runat="server" field=".category.title" />
            </je:avar>
            <je:item runat="server" field=".text" tag="p" />
        </main>
    </body>
</html>
</je:container>