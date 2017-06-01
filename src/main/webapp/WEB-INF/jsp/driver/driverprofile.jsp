<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="../header.jsp">
	<%-- We define a parameter that was used by header.jsp, which is title --%>
	<c:param name="title" value="Driver Profile"></c:param>
</c:import>

<div class="container">
	<div class="row">
		<div class="well col-md-2  toppad  pull-right col-md-offset-2 ">
			<A class="btn col-md-6" href="edit.html">Edit Profile</A> <A
				class="btn col-md-6" href="edit.html">Logout</A> <br>
			<p class=" text-info">May 05,2014,03:00 pm</p>
		</div>
		<div
			class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad">


			<div id="login-overlay" class="modal-dialog"
				style="padding-top: 20px">
				<div class="modal-content">
					<div class="modal-header">
						<h3 class="modal-title">Driver:${dirver.firstName} ${driver.lastName }</h3>
					</div>
					<div class="modal-body">
						<div class="well">
							<div class="row">
								<div class="col-md-3 col-lg-3 col-xs-12" align="center">
									<img alt="User Pic"
										src="${pageContext.request.contextPath}/resources/img/noprofileimage.png"
										class="img-rounded img-responsive">
								</div>


								<div class=" col-md-9 col-lg-9 table-responsive"> 
									<table class="table table-user-information table-responsive">
										<tbody>
											<tr class="col-xs-12">
												<td>Name</td>
												<td>${driver.firstName } ${driver.middleName } ${driver.lastName }</td>
											</tr >
											<tr class="col-xs-12">
												<td>Email</td>
												<td>${driver.email }</td>
											</tr>
											<tr class="col-xs-12">
												<td>Date of Birth</td>
												<td><fmt:formatDate value="${driver.dateOfBirth }" var="dateOfBirth" pattern="yyyy-MM-dd" />${dateOfBirth }</td>
											</tr>

											<tr class="col-xs-12">
												<td>Joined On</td>
												<td>${driver.joinDate }</td>
											</tr>
											<tr class="col-xs-12">
												<td>Address</td>
												<td>${driver.address.street } ,${driver.address.city } ,${driver.address.country }</td>
											</tr>
											<tr class="col-xs-12">
												<td>Driving Card No.</td>
												<td>${driver.drivingCard }</td>
											</tr>
											<tr class="col-xs-12">
												<td>Salary</td>
												<td>${driver.salary }</td>
											</tr>
											<tr class="col-xs-12">
												<td>Phone Number</td>
												<td>${driver.phoneLandline }(Landline)<br>
												<br>${driver.phoneMobile }(Mobile)
												</td>
											</tr>
											<tr class="col-xs-12">
												<td>Truck Plate</td>
												<td><a href="${pageContext.servletContext.contextPath}/truck/show/${driver.truck.id}">${driver.truck.plate}</a>
												</td>
											</tr>
											<tr class="col-xs-12">
												<td>Manager</td>
												<td>${driver.manager.firstName } ${driver.manager.lastName }</td>
											</tr>
											
											

										</tbody>
									</table>

									<a href="/Schedule?userid=12" class="btn btn-primary col-xs-12 col-md-12">Schedule</a> 
								</div>
							</div>
						</div>
					</div>
					<div class="panel-footer">
						<a data-original-title="Broadcast Message" data-toggle="tooltip"
							type="button" class="btn btn-sm btn-primary"><i
							class="glyphicon glyphicon-envelope"></i></a> <span
							class="pull-right"> <a href="edit.html"
							data-original-title="Edit this user" data-toggle="tooltip"
							type="button" class="btn btn-sm btn-warning"><i
								class="glyphicon glyphicon-edit"></i></a> <a
							data-original-title="Remove this user" data-toggle="tooltip"
							type="button" class="btn btn-sm btn-danger"><i
								class="glyphicon glyphicon-remove"></i></a>
						</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<c:import url="../footer.jsp"></c:import>