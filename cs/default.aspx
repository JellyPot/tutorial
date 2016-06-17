<%@ Page %>
<%@ Register TagPrefix="uc" TagName="teaser" Src="~/controls/teaser.ascx" %>
<je:master runat="server" href="~/masters/main.master" />

<je:content runat="server" forRegion="head">
    <title>Můj cvičný blog</title>
</je:content>

<je:content runat="server" forRegion="main">
    <je:repeater runat="server" source="blogPost">
        <item>
            <uc:teaser runat="server" />
        </item>
    </je:repeater>
</je:content>
