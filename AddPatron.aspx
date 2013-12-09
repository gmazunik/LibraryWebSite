<%@ Page Title="" Language="VB" MasterPageFile="~/library.master" AutoEventWireup="false" CodeFile="AddPatron.aspx.vb" Inherits="librarians_AddPatron" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" LoginCreatedUser="false">
        
        <WizardSteps>
            
            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server" >
            </asp:CreateUserWizardStep>

            <asp:WizardStep ID="UserProfile" runat="server" StepType="Step" Title="User Profile Settings">
                
                <table>
                    <tr>
                        <td align="right">First Name:</td> <td align ="left"><asp:TextBox ID="tb_FirstName" runat="server" Columns="50"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_FirstName" ErrorMessage="Please enter a valid first name"></asp:RequiredFieldValidator>
                        </td>            
                    </tr>

                    <tr>
                        <td align="right">Last Name:</td> <td align ="left"><asp:TextBox ID="tb_LastName" runat="server" Columns="50"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_LastName" ErrorMessage="Please enter a valid last name"></asp:RequiredFieldValidator>
                        </td>            
                    </tr>

                    <tr>
                        <td align="right" class="auto-style1">Birth Date:</td> <td align ="left" class="auto-style1"><asp:TextBox ID="tb_BirthDate" runat="server" Columns="50"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tb_BirthDate" ErrorMessage="Please enter a valid birth date"></asp:RequiredFieldValidator>
                        </td>            
                    </tr>

                    <tr>
                        <td align="right">Address 1:</td> <td align ="left"><asp:TextBox ID="tb_Address1" runat="server" Columns="50"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tb_Address1" ErrorMessage="Please enter a valid address"></asp:RequiredFieldValidator>
                        </td>            
                    </tr>

                    <tr>
                        <td align="right">Address 2:</td> <td align ="left"><asp:TextBox ID="tb_Address2" runat="server" Columns="50"></asp:TextBox></td>            
                    </tr>

                    <tr>
                        <td align="right">City:</td> <td align ="left"><asp:TextBox ID="tb_City" runat="server" Columns="50"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tb_City" ErrorMessage="Please enter a valid city"></asp:RequiredFieldValidator>
                        </td>            
                    </tr>

                    <tr>
                        <td align="right">State:</td> <td align ="left"><asp:DropDownList ID="ddl_StateCode" runat="server" DataSourceID="ds_ddlStateCode" DataTextField="PostalCode" DataValueField="PostalCode"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddl_StateCode" ErrorMessage="Please enter a valid state"></asp:RequiredFieldValidator>
                        </td>            
                    </tr>

                    <tr>
                        <td align="right" class="auto-style1">Zip:</td> <td align ="left" class="auto-style1"><asp:TextBox ID="tb_Zip" runat="server" Columns="50"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="tb_Zip" ErrorMessage="Please enter a valid zip code"></asp:RequiredFieldValidator>
                        </td>            
                    </tr>

                    <tr>
                        <td align="right">Phone Number 1:</td> <td align ="left"><asp:TextBox ID="tb_PhoneNumber1" runat="server" Columns="50"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="tb_PhoneNumber1" ErrorMessage="Please enter a valid phone number"></asp:RequiredFieldValidator>
                        </td>            
                    </tr>

                    <tr>
                        <td align="right">Phone Number 2:</td> <td align ="left"><asp:TextBox ID="tb_PhoneNumber2" runat="server" Columns="50"></asp:TextBox></td>            
                    </tr>

                    <tr>
                        <td align="right">E-mail:</td> <td align ="left"><asp:TextBox ID="tb_Email" runat="server" Columns="50"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="tb_Email" Display="Dynamic" ErrorMessage="Please enter a valid email address"></asp:RequiredFieldValidator>
                        </td>            
                    </tr>
                </table>

                <asp:SqlDataSource ID="ds_ddlStateCode" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" 
                    SelectCommand="SELECT [PostalCode] FROM [SLPL_StateCodes]">
                </asp:SqlDataSource>





            </asp:WizardStep>

            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                <ContentTemplate>
                    <table>
                        <tr>
                            <td align="center" colspan="2">Complete</td>
                        </tr>
                        <tr>
                            <td>Your account has been successfully created.</td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <asp:Button ID="ContinueButton" runat="server" 
                                    CausesValidation="False" 
                                    CommandName="Continue" 
                                    OnClick="ContinueButton_Click" 
                                    Text="Continue" 
                                    ValidationGroup="CreateUserWizard1" />
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:CompleteWizardStep>
        
        </WizardSteps>

    </asp:CreateUserWizard>

    

</asp:Content>

