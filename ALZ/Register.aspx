<%@ Page Title="" Language="C#" MasterPageFile="~/ALZ/ALZ.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ALZ.ALZ.Register" %>
<asp:Content ID="Register" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="Title">
        <p align="center">
            Complete this form in ink and return it to your local chapter. To find your local chapter or Walk, visit <a href="Register.aspx">alz.org</a>
        </p>
    </div>
    
    <br />

    <div class="container-fluid">

        <div class="row">
            <div class="col-6">
                <table cellpadding="5" cellspacing="5">
                    <tr>
                        <td style="font-weight:bold">Walk Location: </td>
                        <td with="5">&nbsp;</td>
                        <td>
                            <asp:TextBox ID="txtWalkLocation" Text="" Width="420" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="valLocation" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtWalkLocation" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                        </td>

                    </tr>
                    
                    <tr>
                        <td style="font-weight:bold">Team Name: </td>
                       <td with="5">&nbsp;</td>
                        <td>
                            <asp:TextBox ID="txtTeamName" Text="" Width="420" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="valTeamName" runat="server" ErrorMessage="*" ForeColor="Red"  ControlToValidate="txtTeamName" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        </td>

                    </tr>
                

                </table>
                

            </div>
            <div class="col-6">
                <p1>
                    I am a <asp:CheckBox ID="TeamCaptain" runat="server" /> team captain <asp:CheckBox ID="TeamMember" runat="server" /> team member <asp:CheckBox ID="Individual" runat="server" />  individual <br />
                    My goal is to raise $ <asp:TextBox ID="txtAmount" BorderStyle="Solid" Width="70" runat="server"></asp:TextBox> to help end Alzheimer’s disease. <br />
                    (The recommended minimum goal is $225.) <br />
                    *Most Walk events ask for a fundraising minimum of $100 per participant to receive <br /> 
                    a T-shirt. Contact your local chapter to confirm the T-shirt minimum for your Walk
                </p1>
                <asp:RequiredFieldValidator ID="valAmount" runat="server" ErrorMessage="*" ControlToValidate="txtAmount" Display="Dynamic" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
            </div>
        </div>

    </div>
    <br />

    <!-- creating a div for information-->

    <div class="Info">
    <div class="container-fluid ">
        <div class="row">
            <div class="col-12">

                <table cellpadding="5"  cellspacing="5">
                    <tr>
                        <td style="font-weight:bold">First Name: </td>
                        <td with="10">&nbsp;</td>
                        <td>
                            <asp:TextBox ID="txtFirstName" Text="" Width="650" runat="server"></asp:TextBox>
                        </td>
                    </tr>


                    <tr>
                        <td style="font-weight:bold">Last Name:</td>
                        <td width="10">&nbsp;</td>
                        <td>
                            <asp:TextBox ID="txtLastName" Text="" Width="650" runat="server"></asp:TextBox>
                        </td>

                    </tr>

                    <tr>
                        <td style="font-weight:bold">Address: </td>
                        <td width="10">&nbsp;</td>
                        <td>
                            <asp:TextBox ID="txtAddress" Text="" Width="650" runat="server"></asp:TextBox>
                        </td>

                    </tr>

                    <tr>
                        <td style="font-weight:bold" >City: </td>
                        <td width="10">&nbsp;</td>
                        <td>
                            <asp:TextBox ID="txtCity" Text="" Width="650" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="valCity" runat="server" ErrorMessage="*" Display="Dynamic" ControlToValidate="txtCity"></asp:RequiredFieldValidator>
                        </td>

                    </tr>
                    <tr>
                        <td style="font-weight:bold" > State: </td>
                        <td width="10">&nbsp;</td>
                        <td>
                            <asp:DropDownList ID="lstState" runat="server">
                                <asp:ListItem Text="IL" Value="1" ></asp:ListItem>
                                <asp:ListItem Text="IN" Value="2" ></asp:ListItem>
                                <asp:ListItem Text="LA" Value="3"></asp:ListItem>
                                <asp:ListItem Text="CA" Value="4"></asp:ListItem>
                                
                            </asp:DropDownList>
                     
                        </td>
                        
                       
                    </tr>
                     <tr>
                        <td style="font-weight:bold" > Zip: </td>
                        <td width="10">&nbsp;</td>
                        <td>
                            <asp:TextBox ID="txtZip" Text="" Width="150" runat="server"></asp:TextBox> 
 
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="valZip" runat="server" ErrorMessage="*" ControlToValidate="txtZip" Display="Dynamic" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        </td>
   
                    </tr>

                    <tr>
                        <td style="font-weight:bold" > Phone: </td>
                        <td width="10">&nbsp;</td>
                        <td>
                            <asp:TextBox ID="txtPhone" Text=" " TextMode="Phone" Width="300" runat="server"></asp:TextBox> 
 
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="valPhone" runat="server" ErrorMessage="*" ControlToValidate="txtPhone" Display="Dynamic" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        </td>
   
                    </tr>
                    <tr>
                        <td style="font-weight:bold" > Email: </td>
                        <td width="10">&nbsp;</td>
                        <td>
                            <asp:TextBox ID="txtEmail" Text=" " TextMode="Email" Width="650" runat="server"></asp:TextBox> 
 
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="valEmail" runat="server" ErrorMessage="*" ControlToValidate="txtEmail" Display="Dynamic" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        </td>
   
                    </tr>
                    <tr>
                        <td style="font-weight:bold" > Company Name: </td>
                        <td width="10">&nbsp;</td>
                        <td>
                            <asp:TextBox ID="txtCompany" Text=" "  Width="650" runat="server"></asp:TextBox> 
 
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="valCompany" runat="server" ErrorMessage="*" ControlToValidate="txtCompany" Display="Dynamic" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        </td>
   
                    </tr>

                    <tr>
                        <td style="font-weight:bold" > Job Title: </td>
                        <td width="10">&nbsp;</td>
                        <td>
                            <asp:TextBox ID="txtJobTitle" Text=" "  Width="650" runat="server"></asp:TextBox> 
 
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="valJob" runat="server" ErrorMessage="*" ControlToValidate="txtJobTitle" Display="Dynamic" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td>  </td>
                        <td width="10">&nbsp;</td>
                        <td>
                            <p>
                                <asp:CheckBox ID="txtConfirm" runat="server" /> &nbsp; 
                                 Yes, my company has a matching gifts program
                            </p>
 
                        </td>
                        
                    </tr>

                </table>

            </div>
        </div>
       </div>
        </div>

       <!-- Assumptions of risk -->
    <br />
          
            <div class="Assumption">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <p2 style="color:black; font-size:12px">
                            Walk to End Alzheimer’s involves walking – an activity which may include risks such as, but not limited to, falls, interaction with other participants, effects of weather, traffic and conditions of the road. 
                            In consideration of being allowed to participate in this event, I hereby expressly assume all risks, including bodily and personal injury, death, property loss or other damages of any kind arising in any way 
                            out of my attendance or participation in the Walk to End Alzheimer’s and related activities. It is my responsibility to dress appropriately. Although route maps, rest stops, refreshments and other assistance 
                            may be made available during this event, I am solely responsible for my own health and safety. I represent that I am physically fit and able to attend or participate in this event. I hereby for myself, my heirs, 
                            executors and administrators, release, discharge and agree not to sue Alzheimer’s Association, its chapters, their respective officers, directors, volunteers, employees, sponsors and agents, from any and 
                            all liability, claims, demands and causes of action whatsoever, arising out of my participation in or attendance at this event and related activities – whether resulting from the negligence of any of the above 
                            or from any other cause. I agree that my assumption of risk and release hereunder shall be as broad and inclusive as is permitted under applicable law. If any portion of this agreement is held invalid, the 
                            remainder shall continue in full force and effect. I grant full permission in perpetuity to the organizers of this event to use, reuse, publish and republish my name and image as a participant in the event in 
                            photographs, video or other recordings. I have read, understand and agree to the terms of this agreement.<br />
                                <br />
                            If Participant is a minor or acts in accordance with a legal guardian, the parent or guardian must sign and agree to the below: <br />
                                <br />
                            
                            
                                <p style="font-size:12px; font-style:italic; color:black">
                                    I am the parent and/or legal guardian of Participant, and I hereby consent to his/her participation. I have read the foregoing agreement, and I hereby agree on behalf of myself and Participant to its terms.
                                </p>
                                
                                <p style="font-weight:bold" >Signature:
                                   <asp:TextBox ID="txtSignature" Text="" Width="500" runat="server"></asp:TextBox> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
                                    Date:
                                    <asp:TextBox ID="txtDate" Text="" TextMode="Date" Width="250" runat="server"></asp:TextBox>
                                </p>
                       
                            </p2>
                           
                            
                        </div>
                    </div>
                </div>
                </div>
            

               <div class="moreInfo">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-10">

                            <p>
                                Please help the Alzheimer’s Association better serve our community by completing the following:
                            </p>

                            <p >
                                <h style="font-weight:bold; font-size:12px;color:black ">Gender </h> &nbsp;&nbsp;
                                <asp:RadioButton ID="txtmale" Text=" &nbsp; Male" GroupName="gender"  Checked="true" runat="server" />
                                <asp:RadioButton ID="txtfemale" Text=" &nbsp; Female" GroupName="gender"   runat="server" />
                                <asp:RadioButton ID="txtnoTosay" runat="server" CustomValidator="" GroupName="gender" server="" Text=" &nbsp; Prefer not to say" /> &nbsp; &nbsp; &nbsp;
                                <asp:CustomValidator ID="valGender" runat="server" ErrorMessage="CustomValidator" Display="Dynamic" ControlToValidate=""></asp:CustomValidator>

                               <h style="font-weight:bold; font-size:12px;color: black "> Birth day </h>
                                <asp:TextBox ID="txtBirthDay" TextMode="date" runat="server"></asp:TextBox>
                            </p>
                            <p style="font-size:15px">
                                <h style="font-weight:bold; font-size:12px; color:black ">
                                Choose one: &nbsp;
                                </h>
                                <asp:RadioButton ID="african" Text =" &nbsp;Afrincan-American/Black" GroupName="race" Checked="true" runat="server" />&nbsp;
                                <asp:RadioButton ID="indian" Text =" &nbsp;American-Indian/Alaskan native" GroupName="race" runat="server" />&nbsp;
                                <asp:RadioButton ID="asian" Text =" &nbsp;Asian" GroupName="race" runat="server" />&nbsp;
                                <asp:RadioButton ID="white" Text =" &nbsp;Causian/White" GroupName="race" runat="server" />&nbsp;
                                <asp:RadioButton ID="hispanic" Text =" &nbsp;Hispanic/Latino" GroupName="race" runat="server" />&nbsp;
                                <asp:RadioButton ID="hawaiian" Text =" &nbsp;Native Hawaiian/Other Pacific Islander" GroupName="race" runat="server" />&nbsp;
                                <asp:RadioButton ID="twoMore" Text =" &nbsp; Two or more races" GroupName="race" runat="server" />&nbsp;
                                <asp:RadioButton ID="other" Text =" &nbsp; Other race" GroupName="race" runat="server" />&nbsp;
                                <asp:RadioButton ID="preferNotToSay" Text =" &nbsp;I prefer not to answer" GroupName="race" runat="server" />&nbsp;


                            </p>
                            <p >
                                <h style="font-weight:bold; font-size:15px; color:black ">
                                Please select your highest level of education: &nbsp;
                                </h>
                                <asp:RadioButton ID="lessthan" Text =" &nbsp;Less than Highschool degree" GroupName="education" Checked="true" runat="server" />&nbsp;
                                <asp:RadioButton ID="highschool" Text =" &nbsp;High school graduate" GroupName="education" runat="server" />&nbsp;
                                <asp:RadioButton ID="someCollege" Text =" &nbsp;Some College" GroupName="education" runat="server" />&nbsp;
                                <asp:RadioButton ID="undergrad" Text =" &nbsp;Bachelor's degree" GroupName="education" runat="server" />&nbsp;
                                <asp:RadioButton ID="postgrad" Text =" &nbsp;Post/Professional degree" GroupName="education" runat="server" />&nbsp;
                                <asp:RadioButton ID="not" Text =" &nbsp;Prefer not to say" GroupName="education" runat="server" />&nbsp;
                            </p>
                            <p  >
                                <h style="font-weight:bold; font-size:15px; color: black ">
                                T-shirt size: &nbsp;
                                </h>
                                <asp:RadioButton ID="small" Text ="&nbsp;Small" GroupName="tSize" Checked="true" runat="server" />&nbsp;
                                <asp:RadioButton ID="medium" Text ="&nbsp;Medium" GroupName="tSize" runat="server" />&nbsp;
                                <asp:RadioButton ID="large" Text ="&nbsp;Large" GroupName="tSize" runat="server" />&nbsp;
                                <asp:RadioButton ID="xl" Text ="&nbsp;X-Large" GroupName="tSize" runat="server" />&nbsp;
                                <asp:RadioButton ID="xxl" Text ="&nbsp;XX-Large" GroupName="tSize" runat="server" />&nbsp;
                                <br />
                                <asp:RadioButton ID="donateBack" Text ="&nbsp;I would like to decline all prizes and donate the cost back to the Association." GroupName="tSize" runat="server" />&nbsp;
                                <asp:RadioButton ID="accept" Text ="&nbsp;I would like to decline all prizes except for my event T-shirt." GroupName="tSize" runat="server" />&nbsp;

                            </p>

                            <p >
                               <h style="font-weight:bold; font-size:15px; color: black ">
                                    How did you hear about this year’s Walk?&nbsp;
                               </h>
                              
                                 <asp:RadioButton ID="tv" Text =" &nbsp;Televeision Advertisment" GroupName="how" Checked="true" runat="server" />&nbsp;
                                 <asp:RadioButton ID="radio" Text =" &nbsp;Radio Advertisement" GroupName="how" runat="server" />&nbsp;
                                 <asp:RadioButton ID="print" Text =" &nbsp;Print Advertisment" GroupName="how" runat="server" />&nbsp;
                                 <asp:RadioButton ID="web" Text =" &nbsp;Web Advertisment" GroupName="how" runat="server" />&nbsp;
                                 <asp:RadioButton ID="otherAds" Text =" &nbsp;Other Advertisment" GroupName="how" runat="server" />&nbsp;
                                 <asp:RadioButton ID="poster" Text =" &nbsp; I saw poster or brochure in my community" GroupName="how" runat="server" />&nbsp;<br />
                                 <asp:RadioButton ID="recruited" Text =" &nbsp;I was recruited at a Community Event" GroupName="how" runat="server" />&nbsp;
                                 <asp:RadioButton ID="email" Text =" &nbsp;I received information in the mail" GroupName="how" runat="server" />&nbsp;
                                 <asp:RadioButton ID="alzEmail" Text =" &nbsp;E-mail from Alzheimer’s Association" GroupName="how" runat="server" />&nbsp;
                                 <asp:RadioButton ID="alzPhone" Text =" &nbsp; Phone call from Alzheimer’s Association" GroupName="how" runat="server" />&nbsp;
                                 <asp:RadioButton ID="alzWeb" Text ="  &nbsp;Alzheimer’s Association Web site" GroupName="how" runat="server" />&nbsp;<br />
                                 <asp:RadioButton ID="fb" Text =" &nbsp;Facebook" GroupName="how" runat="server" />&nbsp;
                                 <asp:RadioButton ID="x" Text =" &nbsp;Twiter" GroupName="how" runat="server" />&nbsp;
                                 <asp:RadioButton ID="family" Text =" &nbsp;Family" GroupName="how" runat="server" />&nbsp;
                                 <asp:RadioButton ID="friend" Text =" &nbsp;Friend" GroupName="how" runat="server" />&nbsp;
                                 <asp:RadioButton ID="coworker" Text =" &nbsp;Coworker" GroupName="how" runat="server" />&nbsp;
                                 <asp:RadioButton ID="company" Text =" &nbsp;My company" GroupName="how" runat="server" />&nbsp;
                                 <asp:RadioButton ID="others" Text =" &nbsp;Other " GroupName="how" runat="server" />&nbsp;
                                 <asp:TextBox ID="txtothers" Text=""  width="250" runat="server"></asp:TextBox> <br /> <br />

                                How many years (including this year) have you been participating in Walk? &nbsp;
                                <asp:TextBox ID="txtyrs" TextMode="Number" Width="65" runat="server"></asp:TextBox>
 
                            </p>
                            

                        </div>
                    </div>
                </div>
              </div>



              <div class="connection">
              <div class="container-fluid">
                  <div class="row">
                          <div class="col-10">
                              <p  style="font-weight:bold">
                                  What is your closest connection to the cause?
                              </p>
                              <asp:RadioButton ID="have" Text="&nbsp;I have Alzheimer’s or dementia" GroupName="connection" Checked="true" runat="server" /> &nbsp;&nbsp; &nbsp;
                              <asp:RadioButton ID="supportSomeone" Text="&nbsp;I am supporting or caring for someone with Alzheimer’s" GroupName="connection" runat="server" /> <br />
                              <asp:RadioButton ID="lostSomeone" Text="&nbsp;I have lost someone to Alzheimer’s" GroupName="connection" runat="server" /> &nbsp;&nbsp; &nbsp;
                              <asp:RadioButton ID="supportTheCause" Text="&nbsp;I don’t have a close connection but support the cause and a vision of a world without Alzheimer’s" GroupName="connection" runat="server" /> <br />

                          </div>
                  </div>
              </div>
            </div>
             <br />

              <p>
                  <asp:Button ID="btnconfirm" Text="CONFIRM" CssClass="btn btn-dark" OnClick="btnconfirm_Click" runat="server" />
              </p>




</asp:Content>
