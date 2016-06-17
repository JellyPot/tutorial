<%@ Page %>
<je:master runat="server" href="~/masters/main.master" />

<je:content runat="server" forRegion="head">
    <title>O autorovi - Můj cvičný blog</title>
</je:content>

<je:content runat="server" forRegion="main">
    <h1>O autorovi</h1>
    <p>
        <strong>Jméno:</strong>
        <je:item runat="server" field="about.name" />
    </p>
    <p>
        <strong>E-mail:</strong>
        <je:emaillink runat="server" field="about.email" />
    </p>
    <je:img runat="server" field="about.photo" size="thumb" />
    <je:item runat="server" field="about.text" tag="div" class="about" />
</je:content>
