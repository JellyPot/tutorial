<%@ Page %>
<%@ Register TagPrefix="uc" TagName="teaser" Src="~/controls/teaser.ascx" %>

<je:container runat="server" expect="blogPost">
    <je:master runat="server" href="~/masters/main.master" />

    <je:content runat="server" forRegion="head">
        <title><je:item runat="server" field=".title" /></title>
    </je:content>

    <je:content runat="server" forRegion="main">
        <je:item runat="server" field=".title" tag="h1" />
        <je:item runat="server" field=".published" tag="time" />
        <je:avar runat="server" href="category.aspx" container=".category">
            <je:item runat="server" field=".category.title" />
        </je:avar>
        <je:item runat="server" field=".text" tag="p" />
    </je:content>
</je:container>