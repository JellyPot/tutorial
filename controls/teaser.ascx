<%@ Control %>
<h2>
    <je:avar runat="server" href="blogpost.aspx">
        <je:item runat="server" field=".title" />
    </je:avar>
</h2>
<je:item runat="server" field=".published" tag="time" />
<je:item runat="server" field=".text" format="length: 300" tag="p" />