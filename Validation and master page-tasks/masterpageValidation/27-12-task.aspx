<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="27-12-task.aspx.cs" Inherits="masterpageValidation.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="display:flex; justify-content:space-around; padding-top:30px;">
        <div id="login" style="background-color:white; border:3px solid blue;width:40%  ;   padding: 30px;
    border-radius: 20px;">
            <h1 style="text-align:center;">Login </h1><div class="form-outline mb-4">
   <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
    <label class="form-label" for="form2Example1">Email address</label>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="email should have @ character" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="group1"></asp:RegularExpressionValidator>
  </div>

  <!-- Password input -->
  <div class="form-outline mb-4">
    <label class="form-label" for="form2Example2">Password</label>
      <input id="TextBox2" type="password" class="form-control" runat="server"/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="please enter password" ForeColor="Red" ValidationGroup="group1"></asp:RequiredFieldValidator>
  </div> 

  <!-- 2 column grid layout for inline styling -->
  <div class="row mb-4">
    <div class="col d-flex justify-content-center">
      <!-- Checkbox -->
      <div class="form-check">

      </div>
    </div>

    <div class="col">
      <!-- Simple link -->
      <a href="#!">Forgot password?</a>
    </div>
  </div>

  <!-- Submit button -->

  <!-- Register buttons -->
            <asp:Button ID="Button1" CssClass="btn btn-primary btn-block mb-4" runat="server" Text="Sign in" ValidationGroup="group1" />
  <div class="text-center">
    <p>Not a member? !<a>Register</a></p>
  </div></div>
<div id="register" style="background-color:white; border:3px solid blue;width:40%  ;   padding: 30px;
    border-radius: 20px;">
            <h1 style="text-align:center;">Signup </h1><div class="form-outline mb-4">
   
    <label class="form-label" for="form2Example1">Email address</label>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="email should have @ character" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="group2"></asp:RegularExpressionValidator>
  </div>

  <!-- Password input -->
  <div class="form-outline mb-4">
   
    <label class="form-label" for="form2Example2">Creat Password<br />
      </label>
       <input id="TextBox4" type="password" class="form-control" runat="server"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="please enter password" ForeColor="Red" ValidationGroup="group2"></asp:RequiredFieldValidator>
  </div> 
     <div class="form-outline mb-4">
   
    <label class="form-label" for="form2Example2">Confirm Password</label>
                <input id="TextBox5" type="password" class="form-control" runat="server"/>
           </div> 

  <!-- 2 column grid layout for inline styling -->
  <div class="row mb-4">
    <div class="col d-flex justify-content-center">
      <!-- Checkbox -->
      <div class="form-check">

          <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="password isnt match" ForeColor="Red" ValidationGroup="group2"></asp:CompareValidator>

      </div>
    </div>

    <div class="col">
      <!-- Simple link -->
      <a href="#!">Forgot password?</a>
    </div>
  </div>

  <!-- Submit button -->

  <!-- Register buttons -->
            <asp:Button ID="Button2" CssClass="btn btn-primary btn-block mb-4" runat="server" Text="Sign in" ValidationGroup="group2" />
  <div class="text-center">
    <p>Not a member? !<a>Register</a></p>
  </div></div>



    </div>
</asp:Content>
