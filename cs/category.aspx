<%@ Page %>
<%@ Register TagPrefix="uc" TagName="teaser" Src="~/controls/teaser.ascx" %>

<je:container runat="server" expect="blogPostCategory">
    <je:master runat="server" href="~/masters/main.master" />

    <je:content runat="server" forRegion="head">
        <title>Kategorie: <je:item runat="server" field=".title" /></title>
    </je:content>

    <je:content runat="server" forRegion="main">
        <h1>Kategorie: <je:item runat="server" field=".title" /></h1>
        <je:repeater runat="server"
                        source="blogPost"
                        restrictField="category">
            <item>
                <uc:teaser runat="server" />
            </item>
        </je:repeater>
    </je:content>
</je:container>
