<%@ Page %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Můj cvičný blog</title>
    </head>
    <body>
        <h1>Můj cvičný blog</h1>
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
    </body>
</html>