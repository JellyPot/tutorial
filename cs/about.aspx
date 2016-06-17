<%@ Page %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <je:stylelink runat="server" href="/assets/css/main.css" />
        <title>O autorovi - Můj cvičný blog</title>
    </head>
    <body>
        <header>
            <div class="logo"><je:a runat="server" href="/">Můj blog</je:a></div>
            <nav>
                <ul>
                    <li><je:a runat="server" href="/">Homepage</je:a></li>
                    <li><je:a runat="server" href="/cs/about.aspx">O autorovi</je:a></li>
                </ul>                
            </nav>
        </header>
        <main>
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
        </main>
  </body>
</html>
