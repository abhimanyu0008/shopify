<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>register page</title>
</head>
<%@ include file="navbar.jsp" %>

<link href="/css/registerStyles.css" rel="stylesheet">
<body>
	<div class="container register">
		<div class="row">
			<div class="col-md-3 register-left">
				<img src="https://image.ibb.co/n7oTvU/logo_white.png" alt="" />
				<h3>Welcome.</h3>
				<input type="submit" name="" value="Login" /><br />
			</div>
			<div class="col-md-9 register-right">
				<ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
					<li class="nav-item"><a class="nav-link active" id="home-tab"
						data-toggle="tab" href="#home" role="tab" aria-controls="home"
						aria-selected="true">Auditor</a></li>
					<li class="nav-item"><a class="nav-link" id="profile-tab"
						data-toggle="tab" href="#profile" role="tab"
						aria-controls="profile" aria-selected="false">Auditi</a></li>
				</ul>
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="home" role="tabpanel"
						aria-labelledby="home-tab">
						<h3 class="register-heading">Register Form</h3>
						<div class="row register-form">
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control"
										placeholder="First Name *" value="" />
								</div>
								<div class="form-group">
									<input type="text" class="form-control"
										placeholder="Last Name *" value="" />
								</div>
								<div class="form-group">
									<input type="password" class="form-control"
										placeholder="Password *" value="" />
								</div>
								<div class="form-group">
									<input type="password" class="form-control"
										placeholder="Confirm Password *" value="" />
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input type="email" class="form-control" placeholder="Email *"
										value="" />
								</div>
								<div class="form-group">
									<input type="text" minlength="10" maxlength="10"
										name="txtEmpPhone" class="form-control"
										placeholder="Phone Number *" value="" />
								</div>
								<div class="form-group">
									<input type="submit" class="btnRegister" value="Register" />
								</div>
							</div>
						</div>
					</div>
					<div class="tab-pane fade show" id="profile" role="tabpanel"
						aria-labelledby="profile-tab">
						<h3 class="register-heading">Register</h3>
						<div class="row register-form">
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control"
										placeholder="First Name *" value="" />
								</div>
								<div class="form-group">
									<input type="text" class="form-control"
										placeholder="Last Name *" value="" />
								</div>
								<div class="form-group">
									<input type="email" class="form-control" placeholder="Email *"
										value="" />
								</div>
								<div class="form-group">
									<input type="text" maxlength="10" minlength="10"
										class="form-control" placeholder="Phone Number*" value="" />
								</div>


							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input type="password" class="form-control"
										placeholder="Password *" value="" />
								</div>
								<div class="form-group">
									<input type="password" class="form-control"
										placeholder="Confirm Password *" value="" />
								</div>
								<div class="form-group"></div>
								<input type="submit" class="btnRegister" value="Register" />
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>