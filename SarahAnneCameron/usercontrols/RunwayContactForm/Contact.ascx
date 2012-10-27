<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Contact.ascx.cs" Inherits="UmbracoShop.Controls.Contact" %>

<div id="contact-form">

    <fieldset>
    
    <asp:ValidationSummary id="valSum" runat="server" CssClass="error" DisplayMode="BulletList" />
    
    <div>
        <asp:Label id="lb_name" runat="server" AssociatedControlID="tb_name" Text="Name" />
        <asp:TextBox ID="tb_name" cssclass="text" runat="server" />
    </div>
    <div>
        <asp:Label id="lb_email" runat="server" AssociatedControlID="tb_email" Text="Email" />
        <asp:TextBox ID="tb_email" cssclass="text" runat="server" />
    </div>
        
    <div>
        <asp:Label id="Label1" runat="server" AssociatedControlID="tb_msg" Text="Message" /> 
        <asp:textbox ID="tb_msg" runat="server" cssclass="text" textmode="MultiLine"/>
    </div>
    
    <asp:Button ID="bt_submit" OnClick="sendMail" runat="server" Text="Send" /> <asp:Label CssClass="success" id="lb_success" runat="server" Visible="false">Email sent</asp:Label>
    
    <asp:RequiredFieldValidator Display="None" ID="RequiredFieldValidator0" ControlToValidate="tb_name" runat="server" ErrorMessage="Please provide your name" />
    <asp:RequiredFieldValidator Display="None" ID="RequiredFieldValidator1" ControlToValidate="tb_email" runat="server" ErrorMessage="Please provide an email address" />
    <asp:RequiredFieldValidator Display="None" ID="RequiredFieldValidator2" ControlToValidate="tb_msg" runat="server" ErrorMessage="Oops! You've forgotten to enter a message" />
    
    <asp:RegularExpressionValidator Display="None" ID="RegularExpressionValidator0" runat="server" ValidationExpression="^(?i:(?<local_part>[a-z0-9!#$%^&*{}'`+=-_|/?]+(?:\.[a-z0-9!#$%^&*{}'`+=-_|/?]+)*)@(?<labels>[a-z0-9]+\z?.*[a-z0-9-_]+)*(?<tld>\.[a-z0-9]{2,}))$" ControlToValidate="tb_email" ErrorMessage="Sorry, but that email is not valid" />
    
    </fieldset>
    
</div>