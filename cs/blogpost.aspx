<%@ Page %>
<je:container runat="server" expect="blogPost">
    <!DOCTYPE html>
    <html>
        <head>
            <meta charset="utf-8">
            <title><je:item runat="server" field=".title" /></title>
        </head>
        <body>
            <je:item runat="server" field=".title" tag="h1" />
            <je:item runat="server" field=".published" tag="time" />
            <je:item runat="server" field=".text" tag="p" />
        </body>
    </html>
</je:container>