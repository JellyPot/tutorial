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
        <h2>Diskuse</h2>
        <je:repeater runat="server" source=".comment">
            <item>
                <div class="comment">
                    <je:item runat="server" field=".name" />
                    <je:item runat="server" field=".added" tag="time" />
                    <je:item runat="server" field=".message" tag="p" />
                </div>
            </item>
        </je:repeater>
        <h3>Přidejte příspěvek</h3>
        <form runat="server" method="post">
            <f:collectionForm runat="server" id="forumPost" targetCollection=".comment">
                <formTemplate>
                    <label>Jméno*  <f:input runat="server"
                                            id="name"
                                            targetField="name" />
                    </label>
                    <label>Email*  <f:input runat="server"
                                            id="email"
                                            targetField="email" />
                    </label>
                    <label>Zpráva* <f:textarea runat="server"
                                               id="message"
                                               targetField="message" />
                    </label>
                    <f:const runat="server" constType="DateTime" id="added" targetField="added" />
                    <f:sendButton runat="server" textValue="Odeslat" />
                </formTemplate>
                <sentTemplate>
                    <p>Přidáno!</p>
                </sentTemplate>      
            </f:collectionForm>
        </form>
    </je:content>
</je:container>