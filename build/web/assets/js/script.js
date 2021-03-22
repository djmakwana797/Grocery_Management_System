$(document).ready(function(){
			$("#reg_form").submit(function(){
				var  userName=$("#userName").val();
				var  userEmail=$("#userEmail").val();
				var  userPassword=$("#userPassword").val();
				var  userPhone=$("#userPhone").val();
				var  user_type=$("#user_type").val();
				var  userAddress=$("#userAddress").val();
                                if(userName==="" || userEmail===""  ||  userPassword==="" ||  userPhone==="" || user_type==="none" || userAddress==="")
				{	
                                    
                                        if(userName=="")
					{
						$("#p1").html("Username is required");
						$("#p1").css({"color":"red"});
					}
					if(userEmail=="")
					{
						$("#p2").html("<p id='error1'>Email is required</p>");
						$("#p2").css({"color":"red"});
					}
                                        if(userPassword=="")
					{
						$("#p3").html("<p id='error1'>Password is required</p>");
						$("#p3").css({"color":"red"});
                                        }
                                        if(userPhone=="")
					{
						$("#p4").html("<p id='error1'>Phone is required</p>");
						$("#p4").css({"color":"red"});
                                        }
                                        if(user_type=="none")
					{
						$("#p5").html("<p id='error1'>User type is required</p>");
						$("#p5").css({"color":"red"});
                                        }
                                        if(userAddress=="")
					{
						$("#p6").html("<p id='error1'>Address is required</p>");
						$("#p6").css({"color":"red"});
                                        }
                                        return false;
                                }
                                else
                                {
                                    return true;
                                }
                            });
                            
                            //Login
                            
                            $("#login_form").submit(function(){
				var  userEmail=$("#userEmail").val();
				var  userPassword=$("#userPassword").val();
				var  user_type=$("#user_type").val();
                                if(userEmail===""  ||  userPassword==="" || user_type==="none" )
				{	
                                    
                                        if(userEmail=="")
					{
						$("#p1").html("Username is required");
						$("#p1").css({"color":"red"});
					}
					if(userPassword=="")
					{
						$("#p2").html("<p id='error1'>Password is required</p>");
						$("#p2").css({"color":"red"});
					}
                                        if(user_type=="none")
					{
						$("#p3").html("<p id='error1'>User-type is required</p>");
						$("#p3").css({"color":"red"});
					}
                                        return false;
                                }
                                else
                                {
                                    return true;
                                }
                            });
                            
                            //Update form
                            
                             $("#login_form_update").submit(function(){
				var  userEmail=$("#userEmail").val();
				var  userPassword=$("#userPassword").val();
				var  userconfPassword=$("#userconfPassword").val();
                                if(userEmail===""  ||  userPassword==="" || userconfPassword==="")
				{	
                                    
                                        if(userEmail=="")
					{
						$("#p1").html("Username is required");
						$("#p1").css({"color":"red"});
					}
					if(userPassword=="")
					{
						$("#p2").html("<p id='error1'>Password is required</p>");
						$("#p2").css({"color":"red"});
					}
                                        if(userconfPassword=="")
					{
						$("#p3").html("<p id='error1'>Confirm password is required</p>");
						$("#p3").css({"color":"red"});
                                        }
                                        return false;
                                }
                                else if(userconfPassword!==userPassword)
                                {
                                    alert("Password is not matched !! ")
                                    return false;
                                }
                                else
                                {
                                    return true;
                                }
                            });
                            
                            
                            $("#checkout_form").submit(function(){
				var  userEmail=$("#userEmail").val();
				var  userName=$("#userName").val();
				var  userName=$("#userEmail").val();
				var  userPhone=$("#userPhone").val();
				var  userAddress=$("#userAddress").val();
                                var  d_boy=$("#d_boy").val();
                                if(userEmail===""  ||  userName==="" || userPhone==="" || userAddress==="" || d_boy==="none")
				{	
                                    
                                        if(userEmail=="")
					{
						$("#p1").html("Email is required");
						$("#p1").css({"color":"red"});
					}
					if(userName=="")
					{
						$("#p2").html("<p id='error1'>Name is required</p>");
						$("#p2").css({"color":"red"});
					}
                                        if(userPhone=="")
					{
						$("#p3").html("<p id='error1'>Phone is required</p>");
						$("#p3").css({"color":"red"});
					}
                                        if(userAddress=="")
					{
						$("#p4").html("<p id='error1'>Address is required</p>");
						$("#p4").css({"color":"red"});
                                        }
                                        if(d_boy=="none")
					{
						$("#p5").html("<p id='error1'>Delivery boy must be selected</p>");
						$("#p5").css({"color":"red"});
                                        }
                                        return false;
                                }
                                else
                                {
                                    return true;
                                }
                            });
                            $("#order_form").submit(function(){
				var  userName=$("#userName").val();
				var  userEmail=$("#userEmail").val();
				var  userPhone=$("#userPhone").val();
                                var  user_type=$("#user_type").val();
				var  userAddress=$("#userAddress").val();
                                if(userName===""  ||  userEmail==="" || userPhone==="" || user_type==="none"|| userAddress==="")
				{	
                                    
                                        if(userName=="")
					{
						$("#p1").html("Username is required");
						$("#p1").css({"color":"red"});
					}
					if(userEmail=="")
					{
						$("#p2").html("<p id='error1'>Email is required</p>");
						$("#p2").css({"color":"red"});
					}
                                        if(userPhone=="")
					{
						$("#p4").html("<p id='error1'>Phone is required</p>");
						$("#p4").css({"color":"red"});
					}
                                        if(user_type=="none")
					{
						$("#p5").html("<p id='error1'>Delivery boy must be selected</p>");
						$("#p5").css({"color":"red"});
                                        }
                                        if(userAddress=="")
					{
						$("#p6").html("<p id='error1'>Address is required</p>");
						$("#p6").css({"color":"red"});
                                        }
                                        return false;
                                }
                                else
                                {
                                    return true;
                                }
                            });
                            
                            
                            $("#order_form_while_address").submit(function(){
				var  userName=$("#userName").val();
				var  userEmail=$("#userEmail").val();
				var  userPhone=$("#userPhone").val();
                                var  d_boy=$("#d_boy").val();
				var  userAddress=$("#userAddress").val();
                                if(userName===""  ||  userEmail==="" || d_boy==="none" || userPhone==="" ||  userAddress==="")
				{	
                                    
                                        if(userName=="")
					{
						$("#p1").html("Username is required");
						$("#p1").css({"color":"red"});
					}
					if(userEmail=="")
					{
						$("#p2").html("<p id='error1'>Email is required</p>");
						$("#p2").css({"color":"red"});
					}
                                        if(userPhone=="")
					{
						$("#p3").html("<p id='error1'>Phone is required</p>");
						$("#p3").css({"color":"red"});
					}
                                        if(userAddress=="")
					{
						$("#p7").html("<p id='error1'>Address is required</p>");
						$("#p7").css({"color":"red"});
                                        }
                                        if(d_boy=="none")
					{
						$("#p6").html("<p id='error1'>Please try later</p>");
						$("#p6").css({"color":"red"});
                                        }
                                        return false;
                                }
                                else
                                {
                                    return true;
                                }
                            });
                            
                            $("#contact_form").submit(function(){
				var  subject=$("#subject").val();
				var  message=$("#message").val();
                                if(subject===""  ||  message==="" )
				{	
                                    
                                        if(subject=="")
					{
						$("#p1").html("Subject is required");
						$("#p1").css({"color":"red"});
					}
					if(message=="")
					{
						$("#p2").html("<p id='error1'>Message is required</p>");
						$("#p2").css({"color":"red"});
                                        }
                                        return false;
                                }
                                else
                                {
                                    return true;
                                }
                            });
                        });
                        
