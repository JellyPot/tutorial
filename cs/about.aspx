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

    <form method="post" runat="server">
        <f:CollectionForm runat="server" id="contact" targetCollection="message">
            <formTemplate>
                <label>Vaše jméno* <f:input runat="server"
                                            id="name"
                                            targetField="name" />
                </label>
                <label>Email*      <f:input runat="server"
                                            id="email"
                                            targetField="email" />
                </label>
                <label>Zpráva      <f:textarea runat="server"
                                               id="message"
                                               targetField="message" />
                </label>
                <f:sendButton runat="server" textValue="Odeslat" />
            </formTemplate>
            <sentTemplate>
                <p>Zpráva byla odeslána. Díky!</p>
            </sentTemplate>      
        </f:CollectionForm>
    </form>

</je:content>
