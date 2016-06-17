<%@ Page %>
<je:master runat="server" href="~/masters/main.master" />

<je:content runat="server" forRegion="head">
    <title><je:projectname runat="server" /></title>
</je:content>

<je:content runat="server" forRegion="main">
    <p>JellyPot says Hello!</p>
</je:content>

